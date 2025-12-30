#!/bin/bash
# Pre-Action Hook - 작업 전 허락 프로토콜 강제
# ABSOLUTE RULES #5 구현

ACTION_TYPE="$1"
ACTION_DESC="$2"

# 허락 불필요한 작업 (읽기 전용)
SAFE_ACTIONS=("Read" "Grep" "Glob" "Bash:ls" "Bash:cat" "Bash:pwd" "Bash:echo" "Bash:which")

for safe in "${SAFE_ACTIONS[@]}"; do
  if [[ "$ACTION_TYPE" == "$safe" ]]; then
    exit 0  # 허용
  fi
done

# 위험 작업 감지
RISKY_ACTIONS=("Write" "Edit" "Bash:rm" "Bash:git" "Bash:mv" "Bash:cp" "Bash:chmod" "NotebookEdit")

for risky in "${RISKY_ACTIONS[@]}"; do
  if [[ "$ACTION_TYPE" == "$risky"* ]]; then
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "⚠️  작업 허락 필요"
    echo ""
    echo "🔴 ABSOLUTE RULES #5: 작업 허락 프로토콜"
    echo ""
    echo "작업 유형: $ACTION_TYPE"
    echo "작업 설명: $ACTION_DESC"
    exit 1  # 중단
  fi
done

exit 0
