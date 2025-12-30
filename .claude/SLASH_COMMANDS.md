# 슬래시 커맨드 (28개)
`~/.claude/commands/`

## 루트 (2개)
`/set-home` 홈이동 | `/ui` UI생성

## SuperClaude /sc: (26개)
**메타(4)**: pm, architect, spawn, select-tool
**개발(6)**: implement, improve, build, cleanup, git, test
**설계(4)**: design, brainstorm, workflow, estimate
**분석(4)**: analyze, troubleshoot, explain, reflect
**문서(3)**: document, index, research
**세션(2)**: save, load
**패널(3)**: spec-panel, business-panel, ai-expert
**유틸(1)**: help

## 주요 플래그
| 플래그 | 효과 |
|--------|------|
| --think | ~4K 토큰 |
| --think-hard | ~10K 토큰 |
| --ultrathink | ~32K 토큰 |
| --delegate | 서브에이전트 |
| --token-efficient | 30-50% 절약 |

## 워크플로우
- 새 프로젝트: architect → design → implement → test
- 버그: troubleshoot → analyze → implement → test
- 개선: analyze → improve → cleanup → test

## 자동 활성화
build/create → architect | 버그/에러 → troubleshoot | 설명해 → explain

---
**v1.1** | 2025-12-31 | 160줄→40줄 (75% 감소)
