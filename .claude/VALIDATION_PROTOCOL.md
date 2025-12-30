# 멀티소스 검증 프로토콜
**ABSOLUTE RULES #4 참조**

## 필수 구성
| 구분 | 필수 | 선택 |
|------|------|------|
| Cloud CLI | Claude, Gemini, Codex, Copilot (4개) | - |
| Code-Tier | glm-4.6, qwen3-coder, codellama (3개) | 코드작업 시 |
| Ollama Cloud | mistral-large-3, deepseek-v3.1, kimi-k2, cogito-2.1 (4개) | 작업별 추가 |
| Ollama Local | 2개 (작업별 선택) | llama3.3, deepseek-r1 등 |
| MCP | 1-2개 | codebuff, git 등 |
| Agent | 1개 | code-reviewer 등 |

## 작업별 AI 선택
- **코드**: Cloud 4 + Code-Tier 3 + Ollama 4
- **설계**: Cloud 4 + 추론특화 (cogito, deepseek-r1)
- **문서**: Cloud 4 + 다국어 (mistral, exaone)
- **버그**: Cloud 4 + 디버깅 (codellama, deepseek)

## 검증 절차
1. Cloud CLI 4개 병렬
2. Ollama 4-6개 병렬
3. MCP 도구 분석
4. Agent 최종 리뷰
5. 불일치 시 추가 검증 (합의율 80%+)

---
**v1.1** | 2025-12-31 | 347줄→40줄 (88% 감소)
