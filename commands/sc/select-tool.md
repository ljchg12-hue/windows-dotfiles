---
name: select-tool
description: "Intelligent MCP tool selection based on complexity scoring and operation analysis"
category: special
complexity: high
mcp-servers: [serena, morphllm]
persona: []
---

# /sc:select-tool - Intelligent MCP Tool Selection

## Triggers
- Operations requiring optimal MCP tool selection
- Meta-system decisions needing complexity analysis
- Tool routing decisions for performance vs accuracy trade-offs
- Operations benefiting from capability assessment

## Usage
```
/sc:select-tool [operation] [--analyze] [--explain]
```

## Behavioral Flow
1. **Parse**: Analyze operation type, scope, complexity
2. **Score**: Multi-dimensional complexity scoring
3. **Match**: Compare requirements against capabilities
4. **Select**: Choose optimal tool based on scoring
5. **Validate**: Verify selection accuracy

## MCP Integration
- **Serena MCP**: Optimal for semantic operations, LSP, symbol navigation
- **Morphllm MCP**: Optimal for pattern-based edits, bulk transformations
- **Decision Matrix**: Intelligent routing based on complexity scoring

## Key Patterns
- **Direct Mapping**: Symbol operations → Serena, Pattern edits → Morphllm
- **Complexity Thresholds**: Score >0.6 → Serena, Score <0.4 → Morphllm
- **Fallback Strategy**: Serena → Morphllm → Native tools
