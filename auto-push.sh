#!/bin/zsh

# 当 002 自动备份脚本
# 位置：~/.openclaw/workspace/auto-push.sh

cd /Users/dang/.openclaw/workspace

# 检查是否有变更
git add .
changes=$(git status --porcelain)

if [ -n "$changes" ]; then
    # 有变更则提交并推送
    git commit -m "自动备份 - $(date '+%Y-%m-%d %H:%M')"
    git push origin mani
    echo "[$(date)] 备份完成"
else
    echo "[$(date)] 无变更，跳过"
fi
