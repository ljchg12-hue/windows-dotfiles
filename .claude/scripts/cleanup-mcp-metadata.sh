#!/bin/bash
# MCP 메타데이터 정리 스크립트
# 미설치 MCP 서버 참조 제거

cd ~/.claude/commands/sc/

echo "🔍 정리 전 상태 확인..."
grep "mcp-servers:" *.md | sort | uniq

echo "🧹 미설치 MCP 서버 참조 제거 중..."

# context7 제거 (미설치)
sed -i 's/, context7//g' *.md
sed -i 's/context7, //g' *.md

# tavily 제거 (미설치)
sed -i 's/, tavily//g' *.md
sed -i 's/tavily, //g' *.md

echo "✅ 정리 완료!"
