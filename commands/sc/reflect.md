---
name: reflect
description: "Task reflection and validation using Serena MCP analysis capabilities"
category: special
complexity: standard
mcp-servers: [serena]
persona: []
---

# /sc:reflect - Task Reflection and Validation

## Triggers
- Task completion requiring validation and quality assessment
- Session progress analysis and reflection
- Cross-session learning and insight capture
- Quality gates requiring adherence verification

## Usage
```
/sc:reflect [--type task|session|completion] [--analyze] [--validate]
```

## Behavioral Flow
1. **Analyze**: Examine task state using Serena reflection tools
2. **Validate**: Assess task adherence and completion quality
3. **Reflect**: Deep analysis of collected information
4. **Document**: Update session metadata and capture learnings
5. **Optimize**: Recommendations for process improvement

## MCP Integration
- **Serena MCP**: Mandatory for reflection analysis and task validation
- **Reflection Tools**: think_about_task_adherence, think_about_collected_information, think_about_whether_you_are_done
- **Performance Critical**: <200ms for core reflection operations

## Examples
```
/sc:reflect --type task --analyze      # Task adherence validation
/sc:reflect --type session --validate  # Session progress analysis
/sc:reflect --type completion          # Completion evaluation
```
