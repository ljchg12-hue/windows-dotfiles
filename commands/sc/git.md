---
name: git
description: "Git operations with intelligent commit messages and workflow optimization"
category: utility
complexity: basic
mcp-servers: []
persona: []
---

# /sc:git - Git Operations

## Triggers
- Git repository operations: status, add, commit, push, pull, branch
- Intelligent commit message generation
- Repository workflow optimization
- Branch management and merge operations

## Usage
```
/sc:git [operation] [args] [--smart-commit] [--interactive]
```

## Behavioral Flow
1. **Analyze**: Check repository state and changes
2. **Validate**: Ensure operation is appropriate
3. **Execute**: Run Git command with automation
4. **Optimize**: Apply smart commit messages
5. **Report**: Provide status and next steps

## Key Patterns
- **Smart Commits**: Analyze changes → generate conventional commit message
- **Status Analysis**: Repository state → actionable recommendations
- **Branch Strategy**: Consistent naming and workflow enforcement
- **Error Recovery**: Conflict resolution and state restoration

## Examples
```
/sc:git status                           # Status with recommendations
/sc:git commit --smart-commit            # Intelligent commit message
/sc:git merge feature-branch --interactive  # Guided merge
```
