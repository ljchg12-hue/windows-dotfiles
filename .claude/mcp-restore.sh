#!/bin/bash
# MCP 자동 복구 스크립트
# 사용법: bash ~/.claude/mcp-restore.sh

echo "🔧 MCP 설정 복구 시작..."

# 백업 확인
if [ ! -d ~/.claude/mcp-backup ]; then
    echo "❌ 백업 없음. 먼저 백업 생성 필요."
    exit 1
fi

# 복구
echo "📋 설정 파일 복구 중..."
cp ~/.claude/mcp-backup/.mcp.json ~/.mcp.json
cp ~/.claude/mcp-backup/.claude.json ~/.claude.json
cp ~/.claude/mcp-backup/settings.local.json ~/.claude/settings.local.json

echo "✅ 복구 완료!"
echo "📊 복구된 설정:"
echo "  - .mcp.json"
echo "  - .claude.json"
echo "  - settings.local.json"
echo ""
echo "🔄 Claude Code 재시작이 필요할 수 있습니다."
