---
name: load
description: "Session lifecycle management with Serena MCP integration for project context loading"
category: session
complexity: standard
mcp-servers: [serena]
persona: []
---

# /sc:load - Project Context Loading

## Triggers
- Session initialization and project context loading
- Cross-session persistence and memory retrieval
- Project activation and context management
- Session lifecycle management

## Usage
```
/sc:load [target] [--type project|config|deps|checkpoint] [--refresh] [--analyze]
```

## Behavioral Flow
1. **Initialize**: Establish Serena MCP connection
2. **Discover**: Analyze project structure
3. **Load**: Retrieve memories, checkpoints, persistence data
4. **Activate**: Establish project context
5. **Validate**: Ensure context integrity

## MCP Integration
- **Serena MCP**: Mandatory for project activation, memory retrieval
- **Performance Critical**: <200ms core operations, <1s checkpoints

## Examples
```
/sc:load                                    # Load current directory
/sc:load /path/to/project --type project --analyze  # Specific project
/sc:load --type checkpoint --checkpoint session_123  # Restore checkpoint
/sc:load --type deps --refresh              # Dependency context
```
