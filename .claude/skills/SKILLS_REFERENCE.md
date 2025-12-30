# Skills Reference

Claude Desktop은 스킬을 직접 지원하지 않습니다. 하지만 Claude Code CLI에서 사용하던 스킬들의 기능을 Custom Instructions에 통합하거나 프롬프트로 직접 요청할 수 있습니다.

## 원래 Claude Code CLI 스킬 목록

### 백엔드 & 데이터베이스
- **backend-expert-advisor**: API/DB/Security/Architecture 전문가 조언
- **database-expert-advisor**: 데이터베이스 설계, 최적화, 운영

### 프론트엔드
- **frontend-antipatterns**: 프론트엔드 안티패턴 감지 및 해결
- **frontend-fsd-architect**: Feature-Sliced Design 아키텍처

### 검색 & 조사
- **dev-search-assistant**: 개발 검색 및 발견 도우미
- **github-expert-search**: GitHub 전문 검색 & 오픈소스 분석
- **research-verified**: 전문 검증 검색 - 신뢰도 라벨, 출처 교차 검증

### 정보 관리
- **verified-source-db**: 검증된 출처 데이터베이스
- **verified-information-generator**: 검증된 정보 생성 및 유효성 검사

### 아키텍처 & 설계
- **software-architecture-expert**: 소프트웨어 아키텍처 설계 및 컨설팅

### 개발 환경
- **local-dev-context**: 로컬 개발 환경 컨텍스트 관리
- **language-support**: 다국어 개발 지원

### AI 오케스트레이션
- **multi-ai-orchestrator**: Ollama 기반 멀티 AI 모델 오케스트레이션
  - 자동 프로파일링, 스마트 라우팅, 앙상블 실행

## Claude Desktop에서 사용하는 방법

### 방법 1: Custom Instructions에 통합

스킬의 핵심 지침을 `custom_instructions/` 폴더에 새 파일로 추가:

```markdown
# SKILL_Backend_Expert.md

백엔드 전문가 모드로 작동할 때:
- API 설계: RESTful, GraphQL, gRPC 패턴 분석
- 데이터베이스: 스키마 설계, 쿼리 최적화, 인덱싱
- 보안: 인증, 권한, OWASP Top 10
- 아키텍처: 마이크로서비스, 모놀리스, 서버리스
```

### 방법 2: 프롬프트로 직접 요청

```
"Act as a backend expert advisor and review this API design"
"Use your database expertise to optimize this query"
"Apply frontend anti-pattern detection to this component"
```

### 방법 3: MCP 서버와 조합

스킬 기능 중 일부는 MCP 서버로 대체 가능:

| 원래 스킬 | MCP 서버 대체 |
|----------|--------------|
| github-expert-search | GitHub MCP Server |
| research-verified | Brave Search MCP + Sequential Thinking |
| database-expert-advisor | PostgreSQL/SQLite MCP + Sequential Thinking |
| multi-ai-orchestrator | (Claude Desktop 단일 모델, 직접 구현 불가) |

## 스킬별 상세 기능

### backend-expert-advisor
**목적**: API, 데이터베이스, 보안, 아키텍처 전문 조언

**사용 예시 (프롬프트):**
```
"As a backend expert, analyze this REST API design for scalability issues"
"Review this database schema for potential performance bottlenecks"
"Assess the security implications of this authentication flow"
```

### frontend-fsd-architect
**목적**: Feature-Sliced Design 아키텍처 전문가

**사용 예시:**
```
"Apply Feature-Sliced Design principles to structure this React application"
"Review this component structure against FSD best practices"
```

### multi-ai-orchestrator
**목적**: 여러 AI 모델 동시 활용 및 결과 통합

**Claude Desktop 제한:**
- 단일 Claude 모델만 사용 가능
- 로컬 Ollama 모델 직접 접근 불가

**대안:**
- Sequential Thinking MCP로 다단계 분석
- 여러 프롬프트로 다각도 분석 후 수동 통합

### research-verified
**목적**: 신뢰도 검증된 검색

**Claude Desktop 구현:**
```
"Use --research mode with source credibility verification"
"Search using Brave Search MCP and validate sources against tier-1 criteria"
```

## 통합 팁

1. **핵심 지침 추출**: 각 스킬의 핵심 동작 원칙을 Custom Instructions로
2. **MCP 활용**: 가능한 기능은 MCP 서버로 대체
3. **명시적 요청**: 필요한 전문성을 프롬프트에 명시
4. **모드 조합**: FLAGS.md의 모드와 스킬 개념 결합

## 주의사항

- Claude Desktop은 스킬 자동 활성화 기능이 없음
- 필요한 전문성을 매번 명시적으로 요청해야 함
- MCP 서버가 제공하는 기능과 중복되지 않도록 주의
