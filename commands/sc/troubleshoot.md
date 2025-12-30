---
name: troubleshoot
description: "Diagnose and resolve issues in code, builds, deployments, and system behavior"
category: utility
complexity: basic
mcp-servers: []
persona: []
---

# /sc:troubleshoot - Issue Diagnosis and Resolution

## Triggers
- Code defects and runtime error investigation
- Build failure analysis and resolution
- Performance issue diagnosis
- Deployment problem analysis

## Usage
```
/sc:troubleshoot [issue] [--type bug|build|performance|deployment] [--trace] [--fix]
```

## Behavioral Flow
1. **Analyze**: Examine issue and gather system state
2. **Investigate**: Identify potential root causes
3. **Debug**: Execute structured debugging procedures
4. **Propose**: Validate solution approaches
5. **Resolve**: Apply fixes and verify resolution

## Key Patterns
- **Bug Investigation**: Error analysis → stack trace → code inspection → fix
- **Build Troubleshooting**: Build log → dependency check → configuration validation
- **Performance Diagnosis**: Metrics analysis → bottleneck identification → optimization
- **Deployment Issues**: Environment analysis → configuration verification → service validation

## Examples
```
/sc:troubleshoot "Null pointer exception in user service" --type bug --trace
/sc:troubleshoot "TypeScript compilation errors" --type build --fix
/sc:troubleshoot "API response times degraded" --type performance
/sc:troubleshoot "Service not starting in production" --type deployment --trace
```
