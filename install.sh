#!/bin/sh
# 把主题拷进 Kiki 的数据目录：AI 娘（浅色）、AI 娘（深色）
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
TH="${KIKI_DATA:-$HOME/kiki-data}/themes"
mkdir -p "$TH"
rm -rf "$TH/ai-girls" "$TH/ai-girls-dark"
cp -R "$HERE/ai-girls" "$TH/ai-girls"
cp -R "$HERE/ai-girls" "$TH/ai-girls-dark"
sed -i '' 's/"name": "AI 娘"/"name": "AI 娘（浅色）"/' "$TH/ai-girls/theme.json" 2>/dev/null || sed -i 's/"name": "AI 娘"/"name": "AI 娘（浅色）"/' "$TH/ai-girls/theme.json"
sed -i '' 's/"name": "AI 娘", "base": "light"/"name": "AI 娘（深色）", "base": "dark"/' "$TH/ai-girls-dark/theme.json" 2>/dev/null || sed -i 's/"name": "AI 娘", "base": "light"/"name": "AI 娘（深色）", "base": "dark"/' "$TH/ai-girls-dark/theme.json"
echo "装好了：$TH/ai-girls 和 $TH/ai-girls-dark。打开 Kiki › 设置 › 外观 选「AI 娘」。"
