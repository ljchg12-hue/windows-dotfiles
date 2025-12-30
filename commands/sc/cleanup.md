---
name: cleanup
description: "Systematically clean up code, remove dead code, and optimize project structure"
category: workflow
complexity: standard
mcp-servers: [sequential, context7]
persona: [architect, quality, security]
---

# /sc:cleanup - Code and Project Cleanup

## Triggers
- Code maintenance and technical debt reduction
- Dead code removal and import optimization
- Project structure improvement
- Codebase hygiene initiatives

## Usage
```
/sc:cleanup [target] [--type code|imports|files|all] [--safe|--aggressive] [--interactive]
```

## Behavioral Flow
1. **Analyze**: Assess cleanup opportunities and safety
2. **Plan**: Choose cleanup approach with persona coordination
3. **Execute**: Systematic cleanup with intelligent detection
4. **Validate**: Ensure no functionality loss
5. **Report**: Generate cleanup summary

## Examples
```
/sc:cleanup src/ --type code --safe       # Conservative cleanup
/sc:cleanup --type imports --preview       # Preview unused imports
/sc:cleanup --type all --interactive       # Multi-domain cleanup
```
