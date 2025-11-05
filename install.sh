#!/bin/bash

echo "🚀 Installing Cursor configuration..."

# 备份现有配置
if [ -d ~/.cursor ]; then
    echo "📦 Backing up existing configuration..."
    cp -r ~/.cursor ~/.cursor.backup.$(date +%Y%m%d_%H%M%S)
fi

# 创建 cursor 配置目录（如果不存在）
mkdir -p ~/.cursor/commands

# 安装新配置 - 复制所有 .md 文件
echo "📝 Installing commands..."
cp -r .cursor/commands/*.md ~/.cursor/commands/

# 安装 .cursorrules（如果存在）
if [ -f .cursorrules ]; then
    echo "🤖 Installing AI rules..."
    cp .cursorrules ~/.cursor/.cursorrules
fi

echo "✅ Cursor configuration installed successfully!"
echo "💡 Restart Cursor to apply changes"

# 显示已安装的命令
echo ""
echo "📋 Installed commands:"
ls ~/.cursor/commands/*.md | xargs -n 1 basename | sed 's/\.md$/  - \//'
