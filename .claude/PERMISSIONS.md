# Permission 규칙 설명

**파일**: `~/.claude/settings.local.json`
**총 항목**: 130+개

---

## Permission 구문 형식

```
도구(패턴:와일드카드)
```

- `*`: 모든 인자 허용
- `domain:xxx`: 특정 도메인만
- `/path/**`: 경로 재귀 매칭

---

## 카테고리별 Permission

### 1. 파일 시스템 (3개)
| Permission | 설명 |
|-----------|------|
| `Read(//mnt/4tb/**)` | 4TB 드라이브 읽기 |
| `Write(//mnt/4tb/**)` | 4TB 드라이브 쓰기 |
| `Edit(//mnt/4tb/**)` | 4TB 드라이브 편집 |

### 2. Git (3개)
| Permission | 설명 |
|-----------|------|
| `Bash(GIT_DISCOVERY_ACROSS_FILESYSTEM=1 git reset:*)` | 파일시스템 간 git reset |
| `Bash(GIT_DISCOVERY_ACROSS_FILESYSTEM=1 git clean:*)` | 파일시스템 간 git clean |
| `Bash(git clone:*)` | 저장소 클론 |

### 3. NPM/Node (15개)
| Permission | 설명 |
|-----------|------|
| `Bash(npm bin/prefix/root/install/uninstall/search:*)` | NPM 패키지 관리 |
| `Bash(npm run build:*)` | 빌드 실행 |
| `Bash(npm link)` | 로컬 패키지 링크 |
| `Bash(npx:*)`, `Bash(npx tsc)` | NPX 실행 |
| `Bash(node:*)` | Node.js 실행 |
| `Bash(nvm install/use/list:*)` | NVM 관리 |
| `Bash(./node_modules/.bin/tsc:*)` | TypeScript 컴파일 |

### 4. Python (15개)
| Permission | 설명 |
|-----------|------|
| `Bash(python:*)`, `Bash(python3:*)` | Python 실행 |
| `Bash(python3.11:*)`, `Bash(python3.12:*)` | 특정 버전 |
| `Bash(pip install/show:*)` | PIP 관리 |
| `Bash(uv sync/pip install/add/remove:*)` | UV 패키지 관리 |
| `Bash(conda --version:*)` | Conda 확인 |
| `Bash(.venv/bin/python:*)`, `Bash(.venv/bin/pip:*)` | venv 내 실행 |
| `Bash(source .venv/bin/activate)` | venv 활성화 |

### 5. Docker (10개)
| Permission | 설명 |
|-----------|------|
| `Bash(docker ps/inspect/logs/stop/rm/run/exec:*)` | Docker 컨테이너 관리 |
| `Bash(docker volume ls/rm:*)` | Docker 볼륨 관리 |
| `mcp__docker__list-containers` | MCP Docker 컨테이너 목록 |
| `mcp__docker__get-logs` | MCP Docker 로그 |

---

Last Updated: 2025-12-07
