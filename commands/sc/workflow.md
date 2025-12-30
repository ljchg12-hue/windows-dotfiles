---
name: workflow
description: "Generate structured implementation workflows from PRDs and feature requirements"
category: orchestration
complexity: advanced
mcp-servers: [sequential, context7, magic, playwright, morphllm, serena]
persona: [architect, analyzer, frontend, backend, security, devops, project-manager]
---

# /sc:workflow - Implementation Workflow Generator

## Triggers
- PRD and feature specification analysis
- Structured workflow generation
- Multi-persona coordination for implementation
- Cross-session workflow management

## Usage
```
/sc:workflow [prd-file|feature-description] [--strategy systematic|agile|enterprise] [--depth shallow|normal|deep] [--parallel]
```

## Behavioral Flow
1. **Analyze**: Parse PRD and feature specifications
2. **Plan**: Generate workflow structure with dependency mapping
3. **Coordinate**: Activate multiple personas for domain expertise
4. **Execute**: Create step-by-step workflows
5. **Validate**: Apply quality gates and ensure completeness

## MCP Integration
- **Sequential MCP**: Complex workflow analysis and planning
- **Context7 MCP**: Framework-specific workflow patterns
- **Magic MCP**: UI/UX workflow generation
- **Playwright MCP**: Testing workflow integration
- **Serena MCP**: Cross-session workflow persistence

## Examples
```
/sc:workflow Claudedocs/PRD/feature-spec.md --strategy systematic --depth deep
/sc:workflow "user authentication system" --strategy agile --parallel
/sc:workflow enterprise-prd.md --strategy enterprise --validate
```
