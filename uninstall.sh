#!/bin/bash

echo "🗑️  Uninstalling Cursor configuration..."

# 检查是否存在配置目录
if [ ! -d ~/.cursor ]; then
    echo "❌ No Cursor configuration found"
    exit 0
fi

# 备份当前配置（以防万一）
if [ -d ~/.cursor/commands ]; then
    echo "📦 Creating backup before uninstall..."
    backup_name=~/.cursor.uninstall-backup.$(date +%Y%m%d_%H%M%S)
    mkdir -p "$backup_name"
    cp -r ~/.cursor/commands "$backup_name/"
    echo "✅ Backup created at: $backup_name"
fi

# 删除整个 commands 目录
if [ -d ~/.cursor/commands ]; then
    echo "🗑️  Removing commands directory..."
    rm -rf ~/.cursor/commands
fi

echo ""
echo "✅ Cursor configuration uninstalled successfully!"
echo "💡 Restart Cursor to apply changes"

# 检查是否有备份可以恢复
echo ""
backups=$(ls -dt ~/.cursor.backup.* 2>/dev/null | head -5)
if [ -n "$backups" ]; then
    echo "📋 Available backups (most recent first):"
    echo "$backups" | while read backup; do
        backup_date=$(basename "$backup" | sed 's/\.cursor\.backup\.//')
        echo "  - $backup_date: $backup"
    done
    echo ""
    echo "💡 To restore a backup, run:"
    echo "   cp -r <backup-path>/commands/* ~/.cursor/commands/"
fi

