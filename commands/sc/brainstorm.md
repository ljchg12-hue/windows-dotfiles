---
name: brainstorm
description: "Interactive requirements discovery through Socratic dialogue and systematic exploration"
category: orchestration
complexity: advanced
mcp-servers: [sequential, context7, magic, playwright, morphllm, serena]
persona: [architect, analyzer, frontend, backend, security, devops, project-manager]
---

# /sc:brainstorm - Interactive Requirements Discovery

## Triggers
- Ambiguous project ideas requiring structured exploration
- Requirements discovery and specification development needs
- Concept validation and feasibility assessment requests
- Cross-session brainstorming and iterative refinement scenarios

## Usage
```
/sc:brainstorm [topic/idea] [--strategy systematic|agile|enterprise] [--depth shallow|normal|deep] [--parallel]
```

## Behavioral Flow
1. **Explore**: Transform ambiguous ideas through Socratic dialogue
2. **Analyze**: Coordinate multiple personas for domain expertise
3. **Validate**: Apply feasibility assessment across domains
4. **Specify**: Generate concrete specifications
5. **Handoff**: Create actionable briefs for implementation

## MCP Integration
- **Sequential MCP**: Complex multi-step reasoning
- **Context7 MCP**: Framework-specific feasibility assessment
- **Magic MCP**: UI/UX feasibility and design system analysis
- **Playwright MCP**: User experience validation
- **Serena MCP**: Cross-session persistence and memory management
