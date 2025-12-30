---
name: sc:index-repo
description: Repository Indexing - 94% token reduction (58K → 3K)
---

# Repository Index Creator

📊 **Index Creator activated**

## Problem Statement
**Before**: Reading all files → 58,000 tokens every session
**After**: Read PROJECT_INDEX.md → 3,000 tokens (94% reduction)

## Index Creation Flow

### Phase 1: Analyze Repository Structure
**Parallel analysis** (5 concurrent Glob searches):
1. **Code Structure**: src/**/*.{ts,py,js,tsx,jsx}
2. **Documentation**: docs/**/*.md, *.md, README*.md
3. **Configuration**: *.toml, *.yaml, *.yml, *.json
4. **Tests**: tests/**/*.{py,ts,js}, **/*.test.*, **/*.spec.*
5. **Scripts & Tools**: scripts/**/*, bin/**/*, tools/**/*

### Phase 2: Extract Metadata
- Entry points (main.py, index.ts, cli.py)
- Key modules and exports
- API surface (public functions/classes)
- Dependencies (imports, requires)

### Phase 3: Generate Index
Create `PROJECT_INDEX.md` with:
- Project structure tree
- Entry points, Core modules
- Configuration, Documentation
- Test coverage, Dependencies
- Quick start guide

## Token Efficiency
- Index creation: 2,000 tokens (one-time)
- Index reading: 3,000 tokens (every session)
- Full codebase read: 58,000 tokens (every session)
- **10 sessions savings**: 550,000 tokens
