---
name: save
description: "Session lifecycle management with Serena MCP integration for session context persistence"
category: session
complexity: standard
mcp-servers: [serena]
persona: []
---

# /sc:save - Session Context Persistence

## Triggers
- Session completion and context persistence
- Cross-session memory management
- Project understanding preservation
- Session lifecycle management

## Usage
```
/sc:save [--type session|learnings|context|all] [--summarize] [--checkpoint]
```

## Behavioral Flow
1. **Analyze**: Examine session progress and discoveries
2. **Persist**: Save context using Serena MCP
3. **Checkpoint**: Create recovery points
4. **Validate**: Ensure data integrity
5. **Prepare**: Ready context for future sessions

## MCP Integration
- **Serena MCP**: Mandatory for session management and persistence
- **Performance Critical**: <200ms for memory operations, <1s for checkpoints

## Examples
```
/sc:save                            # Save current session
/sc:save --type all --checkpoint    # Complete session preservation
/sc:save --summarize                # Session summary with documentation
/sc:save --type learnings           # Save only new patterns/insights
```
