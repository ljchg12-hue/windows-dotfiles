---
name: spawn
description: "Meta-system task orchestration with intelligent breakdown and delegation"
category: special
complexity: high
mcp-servers: []
persona: []
---

# /sc:spawn - Meta-System Task Orchestration

## Triggers
- Complex multi-domain operations requiring breakdown
- Large-scale system operations
- Operations requiring parallel coordination
- Meta-level orchestration beyond standard commands

## Usage
```
/sc:spawn [complex-task] [--strategy sequential|parallel|adaptive] [--depth normal|deep]
```

## Behavioral Flow
1. **Analyze**: Parse complex operation requirements
2. **Decompose**: Break into coordinated subtask hierarchies
3. **Orchestrate**: Execute with optimal coordination
4. **Monitor**: Track progress with dependency management
5. **Integrate**: Aggregate results and provide summary

## Key Patterns
- **Hierarchical Breakdown**: Epic → Story → Task → Subtask
- **Strategy Selection**: Sequential → Parallel → Adaptive
- **Meta-System Coordination**: Cross-domain → resource optimization
- **Progressive Enhancement**: Systematic → quality gates → validation

## Examples
```
/sc:spawn "implement user authentication system"
/sc:spawn "migrate monolith to microservices" --strategy adaptive --depth deep
/sc:spawn "establish CI/CD pipeline with security scanning"
```
