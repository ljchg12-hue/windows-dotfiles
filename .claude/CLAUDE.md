# Claude Code Global v3.0
<!-- Updated: 2025-12-31 | Token-Optimized -->

## 우선순위
1. **안전** - 시스템 보안, 사용자 보호 (불변)
2. **ABSOLUTE RULES** - 작업허락, 병렬처리, 멀티소스, 레포팅 (강제)
3. **일반지침** - TDD, AI CLI, Agents, Skills (상황별)

## MCP
- `~/.mcp.json` 단일 소스 (17개 직접 + 174개 Gateway)
- `~/.claude.json`에 mcpServers 금지

## NEVER KILL
Docker, Codex CLI, Gemini CLI, Ollama, MCP 서버, 개발 서버 - 절대 kill/stop/restart 금지

---

## ABSOLUTE RULES

### Rule 1: 지침 로딩
작업 시작 전 자동 적용

### Rule 2: Tool Search
mcp-find, Grep, Glob 우선

### Rule 3: 병렬처리
- 묶음: 3-7개 (최소 3, 최대 7)
- AI 병렬: 16개 / MCP 병렬: 7개
- 금지: 1-2개 실행, 8개+ 실행, 순차 실행(독립작업)

### Rule 4: 멀티소스 검증
최소 구성:
- Cloud CLI 4개: Claude, Gemini, Codex, Copilot (필수)
- Code-Tier S급 3개: glm-4.6, qwen3-coder, codellama (코드작업 시)
- Ollama Cloud 4개: mistral-large-3, deepseek-v3.1, kimi-k2, cogito-2.1
- Ollama Local 2개: 작업별 선택
- MCP 1-2개, Agent 1개

### Rule 5: 작업 허락
Write/Edit/Bash 실행 전:
1. 작업요약 (1-2줄)
2. 범위 (파일수, 도구, AI/MCP/Agent, 소요시간, 위험도)
3. 모드선택 (오토/부분수락/수동)
4. 허락대기

예외: Read, Grep, Glob (즉시 실행)
범위초과 시: 재허락

### Rule 6: 추측 금지
직접 확인만

### Rule 7: 레포팅
작업완료 시 필수:
- 사용도구 (이름+횟수)
- 사용AI (Cloud/Ollama Cloud/Local 구분)
- 사용MCP, Agent
- 통계 (병렬묶음, 소요시간, 파일수)

### Rule 8: 적극 활용
모든 리소스 최대 활용:
- **Skills** (34개): 작업 맥락에 맞는 SKILL.md 자동 활성화
- **Agents** (35개): Task tool로 전문 에이전트 병렬 위임
- **SuperClaude** (30개): /sc:* 명령 우선 사용 (analyze, implement, test 등)
- **MCP** (191개): 최적 도구 선택, mcp-find로 검색
- **AI 모델** (41개): 멀티소스 검증 시 다양한 모델 병렬 호출
- **금지**: 단일 도구/모델만 사용, 리소스 미활용

---

## Context 관리
- 묶음별 실행: 7개 동시 → 완료 → 다음 묶음
- 대형파일(500줄+): 3개 + limit
- 3묶음마다 정리, 경고 전 /compact

---

## AI CLI
**Cloud 4**: Claude, Gemini, Codex, Copilot
**Code-Tier S급 3**: glm-4.6:cloud, qwen3-coder:480b-cloud, codellama:70b
**Ollama Cloud S-Tier**: mistral-large-3:675b, kimi-k2:1t, deepseek-v3.1:671b, cogito-2.1:671b
**Ollama Local 70B+**: llama3.3, deepseek-r1:70b, exaone4.0:32b
**설정**: Claude Temp=0, others=0.3
**빠른 Gemini**: `gemini-fast "질문"` (MCP 없음)

## Agents
개발: python/frontend/backend-expert | 설계: system/devops-architect | 품질: quality/security-engineer | 리서치: deep-research, Explore

## Skills
`~/.claude/skills/` - SKILL.md 기반 자동 활성화

## Commands
`~/.claude/commands/` - `/command-name` 호출

---

## TDD
RED(실패테스트) → GREEN(최소코드) → REFACTOR(통과후만) → COMMIT

## Protocol
작업전 허락 → 작업중 진행 → 문제시 보고 → 범위초과 재허락
금지: 맥락추측, 불명확답변, 무허락실행, 요청확장

---

**v3.0** | 2025-12-31 | 470줄→120줄 (75% 감소)
