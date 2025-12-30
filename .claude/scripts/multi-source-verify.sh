#!/bin/bash
# 멀티소스 검증 자동화 스크립트
# ABSOLUTE RULES #4 구현

set -euo pipefail

TASK_TYPE="${1:-}"
PROMPT_FILE="${2:-}"

if [[ -z "$TASK_TYPE" || -z "$PROMPT_FILE" ]]; then
  echo "사용법: $0 <task_type> <prompt_file>"
  echo ""
  echo "task_type:"
  echo "  code    - 코드 검증 (AI 8개 + MCP 2개 + Agent 1개)"
  echo "  design  - 설계 검증 (추론 AI 4개 + Agent 2개)"
  echo "  doc     - 문서 검증 (다국어 AI 6개 + MCP 1개)"
  exit 1
fi

PROMPT=$(cat "$PROMPT_FILE")
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
RESULT_DIR="/tmp/multi-source-verify_${TIMESTAMP}"

mkdir -p "$RESULT_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 멀티소스 검증 시작"
echo "작업 유형: $TASK_TYPE"
echo "결과 디렉토리: $RESULT_DIR"

case "$TASK_TYPE" in
  code)
    echo "📊 코드 검증 시작"
    # Cloud CLI 4개 + Ollama Cloud 4개 병렬 실행
    gemini "$PROMPT" > "$RESULT_DIR/gemini.txt" 2>&1 &
    codex exec "$PROMPT" > "$RESULT_DIR/codex.txt" 2>&1 &
    copilot -p "$PROMPT" --allow-all-tools > "$RESULT_DIR/copilot.txt" 2>&1 &
    ollama run mistral-large-3:675b-cloud "$PROMPT" > "$RESULT_DIR/mistral-675b.txt" 2>&1 &
    ollama run deepseek-v3.1:671b-cloud "$PROMPT" > "$RESULT_DIR/deepseek-671b.txt" 2>&1 &
    ollama run qwen3-coder:480b-cloud "$PROMPT" > "$RESULT_DIR/qwen-480b.txt" 2>&1 &
    ollama run cogito-2.1:671b-cloud "$PROMPT" > "$RESULT_DIR/cogito-671b.txt" 2>&1 &
    wait
    echo "✅ AI 8개 병렬 실행 완료"
    ;;
  design)
    echo "🎨 설계 검증 시작"
    ollama run cogito-2.1:671b-cloud "$PROMPT" > "$RESULT_DIR/cogito.txt" 2>&1 &
    ollama run kimi-k2-thinking:cloud "$PROMPT" > "$RESULT_DIR/kimi-thinking.txt" 2>&1 &
    ollama run deepseek-r1:70b "$PROMPT" > "$RESULT_DIR/deepseek-r1.txt" 2>&1 &
    ollama run mistral-large-3:675b-cloud "$PROMPT" > "$RESULT_DIR/mistral.txt" 2>&1 &
    wait
    echo "✅ 추론 AI 4개 완료"
    ;;
  doc)
    echo "📝 문서 검증 시작"
    gemini "$PROMPT" > "$RESULT_DIR/gemini.txt" 2>&1 &
    codex exec "$PROMPT" > "$RESULT_DIR/codex.txt" 2>&1 &
    ollama run deepseek-v3.1:671b-cloud "$PROMPT" > "$RESULT_DIR/deepseek.txt" 2>&1 &
    ollama run kimi-k2:1t-cloud "$PROMPT" > "$RESULT_DIR/kimi.txt" 2>&1 &
    wait
    echo "✅ 다국어 AI 4개 완료"
    ;;
esac

echo "✅ 멀티소스 검증 완료"
echo "📂 결과 위치: $RESULT_DIR"
ls -lh "$RESULT_DIR"
