---
name: index
description: "Generate comprehensive project documentation and knowledge base with intelligent organization"
category: special
complexity: standard
mcp-servers: [sequential, context7]
persona: [architect, scribe, quality]
---

# /sc:index - Project Documentation

## Triggers
- Project documentation creation and maintenance
- Knowledge base generation and organization
- API documentation and structure analysis
- Cross-referencing and navigation enhancement

## Usage
```
/sc:index [target] [--type docs|api|structure|readme] [--format md|json|yaml]
```

## Behavioral Flow
1. **Analyze**: Examine project structure and components
2. **Organize**: Apply intelligent organization patterns
3. **Generate**: Create comprehensive documentation
4. **Validate**: Ensure completeness and quality
5. **Maintain**: Update while preserving manual additions

## Examples
```
/sc:index project-root --type structure --format md    # Structure docs
/sc:index src/api --type api --format json             # API documentation
/sc:index . --type docs                                 # Knowledge base
```
