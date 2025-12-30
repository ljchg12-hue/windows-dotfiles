---
name: task
description: "Execute complex tasks with intelligent workflow management and delegation"
category: special
complexity: advanced
mcp-servers: [sequential, context7, magic, playwright, morphllm, serena]
persona: [architect, analyzer, frontend, backend, security, devops, project-manager]
---

# /sc:task - Enhanced Task Management

## Triggers
- Complex tasks requiring multi-agent coordination
- Projects needing structured workflow management
- Operations requiring intelligent MCP server routing
- Tasks benefiting from systematic execution

## Usage
```
/sc:task [action] [target] [--strategy systematic|agile|enterprise] [--parallel] [--delegate]
```

## Behavioral Flow
1. **Analyze**: Parse task requirements and execution strategy
2. **Delegate**: Route to appropriate MCP servers and personas
3. **Coordinate**: Execute with workflow management
4. **Validate**: Apply quality gates and verification
5. **Optimize**: Analyze performance and provide recommendations

## MCP Integration
- **Sequential MCP**: Complex multi-step task analysis
- **Context7 MCP**: Framework-specific patterns
- **Magic MCP**: UI/UX task coordination
- **Playwright MCP**: Testing workflow integration
- **Morphllm MCP**: Large-scale task transformation
- **Serena MCP**: Cross-session task persistence

## Examples
```
/sc:task create "enterprise authentication system" --strategy systematic --parallel
/sc:task execute "feature backlog" --strategy agile --delegate
/sc:task execute "microservices platform" --strategy enterprise --parallel
```
