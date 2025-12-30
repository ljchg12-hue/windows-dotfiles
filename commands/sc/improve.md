---
name: improve
description: "Apply systematic improvements to code quality, performance, and maintainability"
category: workflow
complexity: standard
mcp-servers: [sequential, context7]
persona: [architect, performance, quality, security]
---

# /sc:improve - Code Improvement

## Triggers
- Code quality enhancement and refactoring
- Performance optimization and bottleneck resolution
- Maintainability improvements and technical debt reduction
- Best practices application and standards enforcement

## Usage
```
/sc:improve [target] [--type quality|performance|maintainability|style] [--safe] [--interactive]
```

## Behavioral Flow
1. **Analyze**: Examine codebase for improvement opportunities
2. **Plan**: Choose improvement approach with persona coordination
3. **Execute**: Apply systematic improvements with best practices
4. **Validate**: Ensure functionality preservation
5. **Document**: Generate improvement summary

## MCP Integration
- **Sequential MCP**: Complex multi-step improvement analysis
- **Context7 MCP**: Framework-specific best practices
- **Persona Coordination**: Architect (structure), Performance (speed), Quality (maintainability), Security (safety)

## Key Patterns
- **Quality Improvement**: Code analysis → debt identification → refactoring
- **Performance Optimization**: Profiling → bottleneck identification → optimization
- **Maintainability Enhancement**: Structure analysis → complexity reduction → documentation
- **Security Hardening**: Vulnerability analysis → security patterns → validation

## Examples
```
/sc:improve src/ --type quality --safe           # Quality enhancement
/sc:improve api-endpoints --type performance --interactive  # Performance
/sc:improve legacy-modules --type maintainability --preview  # Maintainability
/sc:improve auth-service --type security --validate  # Security hardening
```
