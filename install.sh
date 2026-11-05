#!/bin/sh
# 把 AI 娘装饰拷进 Kiki 的数据目录（旧版装的 ai-girls-dark 一起清掉：现在深色外观直接叠装饰就行）
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
TH="${KIKI_DATA:-$HOME/kiki-data}/themes"
mkdir -p "$TH"
rm -rf "$TH/ai-girls" "$TH/ai-girls-dark"
cp -R "$HERE/ai-girls" "$TH/ai-girls"
echo "装好了：$TH/ai-girls。打开 Kiki › 设置 › 外观，在「装饰」里勾上「AI 娘」。"
