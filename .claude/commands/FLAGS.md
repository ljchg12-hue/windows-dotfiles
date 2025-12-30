# Claude Desktop Framework Flags

Behavioral flags for Claude Desktop to enable specific execution modes and patterns.

## MCP Server Flags
- --tavily / --search: Web search
- --playwright / --browser: Browser automation
- --sequential / --seq: Multi-step reasoning
- --github: Repository management
- --postgres / --db: Database operations
- --memory / --knowledge: Knowledge graph

## Analysis Depth Flags
- --think: Standard (~4K tokens)
- --think-hard: Deep (~10K tokens)
- --ultrathink: Maximum (~32K tokens)

## Execution Control Flags
- --loop: Iterative improvement cycles
- --validate: Pre-execution risk assessment
- --safe-mode: Maximum validation

## Output Optimization Flags
- --uc / --ultracompressed: 30-50% token reduction
- --scope [file|module|project|system]
- --focus [performance|security|quality|architecture]
