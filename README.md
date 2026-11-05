# Kiki 主题：AI 娘

Kiki 的非官方**装饰**：叠在浅色、深色、刀剑神域等任何外观上。总览时间轴卡片按“谁在干活”，在右侧放对应 AI 娘的半身立绘。立绘只占卡片右边 40%，不挡文字。

已配好的：Claude、DeepSeek、GPT（Codex/OpenAI 共用）、Gemini、Grok、Kimi、Qwen、GLM、MiniMax、Mistral、Llama、混元、豆包（Seed）。MiMo 的原图是黑底，暂时没放进卡片。Hermes 留了位置，放一张 `ai-girls/hermes.jpg` 再打开 theme.css 里那行就能用。

## 仓库里有什么

- `ai-girls/`：主题本身（theme.css、theme.json、每个角色一张缩到 1400 像素高的立绘）。
- `originals/`：从 [shuaizenge/ai-girls](https://github.com/shuaizenge/ai-girls) 备份的全部可转载原图（30 张：立绘、Q 版、三视图），保留原始文件、目录和 `catalog.json`（来源、尺寸、校验和），以后原库关了也不丢。没收：豆包官方头像和用它生成的图（官方版权）、DeepSeek 娘人声（作者禁止转载）。`originals/NOTICE-upstream.md` 是原库的署名说明，其中提到的这几项本仓库没有。

| 浅色 | 深色 |
|---|---|
| ![](screenshots/light.png) | ![](screenshots/dark.png) |

## 安装

最简单：打开 [Kiki 宝库](https://lkyxuan.github.io/kiki-store/)，点 AI 娘的「在 Kiki 里打开」。

或者在跑 Kiki 的电脑上手动装：

```sh
git clone <本仓库地址> kiki-theme-ai-girls
sh kiki-theme-ai-girls/install.sh
```

然后打开 Kiki › 设置 › 外观，在「装饰」里勾上「AI 娘」，上面的外观随便选。卸载就删掉 `~/kiki-data/themes/ai-girls`。旧版 Kiki 不认装饰，会把它当成一个基于浅色的外观。

## 素材署名

立绘整理自 [shuaizenge/ai-girls](https://github.com/shuaizenge/ai-girls)。除 DeepSeek 和 MiMo 外，都出自 ZipZipPipe。

- **Claude、GPT、Gemini、Grok、Kimi、Qwen、GLM、MiniMax、Mistral、Llama、混元、豆包（Seed）**：作者 [ZipZipPipe](https://www.pixiv.net/users/18604994)（[Bilibili](https://space.bilibili.com/4168597)），出自《AI娘化》（[Pixiv 148186519](https://www.pixiv.net/artworks/148186519)）。作者在 [这里](https://www.bilibili.com/video/BV1bARXBYEZz/) 说明图片开放分享、允许再创作。
- **MiMo**：作者 甶丶，CC BY-NC（[来源](https://www.bilibili.com/opus/1242097128919007239)）。DeepSeek 三视图的具体绘制者待核实（取自梗鲸设定集）。
- **DeepSeek**：原角色（鲸鱼娘）[上善无形](https://space.bilibili.com/4456176)；DeepSeek 女仆二次设计 ZipZipPipe，作者声明 **CC BY-NC-SA 4.0**（[来源](https://www.bilibili.com/video/BV1tE9XBbErS/)）。

## 许可

本主题包（样式、截图和图片副本）按 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh-hans) 提供：转载请保留上面的署名，**不得商用**，改编后按相同许可发布。

DeepSeek、ChatGPT/GPT、Claude、Codex 等名称和商标归各自权利人所有。这些是社区拟人设计，和厂商、和 Kiki 官方都没有关系。如果你是作者并希望调整署名或移除素材，请开 Issue。
