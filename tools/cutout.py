# 抠白底：和边框连通的近白色区域当背景；边缘一圈按“有多白”给半透明，并把白色从颜色里减掉（去白边）
# 用法：python3 tools/cutout.py 白底图.jpg ai-girls/名字.webp（要 pillow、numpy、scipy）
import sys, numpy as np
from PIL import Image
from scipy import ndimage
src, dst = sys.argv[1], sys.argv[2]
im = np.asarray(Image.open(src).convert("RGB")).astype(np.float32)
mn = im.min(axis=2)
near = mn > 232                       # 近白
lab, n = ndimage.label(near)
border = np.unique(np.concatenate([lab[0], lab[-1], lab[:, 0], lab[:, -1]]))
bg = np.isin(lab, border[border > 0])
# 背景边上 3 像素的过渡带
band = ndimage.binary_dilation(bg, iterations=3) & ~bg
alpha = np.ones(mn.shape, np.float32)
alpha[bg] = 0
lo, hi = 150.0, 245.0
a_band = np.clip((hi - mn) / (hi - lo), 0, 1)
alpha[band] = np.minimum(alpha[band], a_band[band])
alpha = ndimage.gaussian_filter(alpha, 0.6)
alpha[bg & (ndimage.binary_erosion(bg, iterations=2))] = 0
# 去白边：c = a*fg + (1-a)*255  →  fg = (c - (1-a)*255)/a
a3 = np.clip(alpha, 1e-3, 1)[..., None]
fg = np.clip((im - (1 - a3) * 255) / a3, 0, 255)
rgba = np.dstack([fg, alpha * 255]).astype(np.uint8)
Image.fromarray(rgba, "RGBA").save(dst, "WEBP", quality=82, method=6)
