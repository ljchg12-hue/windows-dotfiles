---
name: explain
description: "Provide clear explanations of code, concepts, and system behavior with educational clarity"
category: workflow
complexity: standard
mcp-servers: [sequential, context7]
persona: [educator, architect, security]
---

# /sc:explain - Code and Concept Explanation

## Triggers
- Code understanding and documentation requests
- System behavior explanation for architectural components
- Educational content generation
- Framework-specific concept clarification

## Usage
```
/sc:explain [target] [--level basic|intermediate|advanced] [--format text|examples|interactive] [--context domain]
```

## Behavioral Flow
1. **Analyze**: Examine target code/concept/system
2. **Assess**: Determine audience level and depth
3. **Structure**: Plan explanation sequence
4. **Generate**: Create explanations with examples
5. **Validate**: Verify accuracy and effectiveness

## Examples
```
/sc:explain authentication.js --level basic
/sc:explain react-hooks --level intermediate --context react
/sc:explain microservices-system --level advanced --format interactive
/sc:explain jwt-authentication --context security --level basic
```
