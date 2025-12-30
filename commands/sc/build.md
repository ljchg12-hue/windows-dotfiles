---
name: build
description: "Build, compile, and package projects with intelligent error handling and optimization"
category: utility
complexity: enhanced
mcp-servers: [playwright]
persona: [devops-engineer]
---

# /sc:build - Project Building and Packaging

## Triggers
- Project compilation and packaging requests
- Build optimization and artifact generation needs
- Error debugging during build processes
- Deployment preparation requirements

## Usage
```
/sc:build [target] [--type dev|prod|test] [--clean] [--optimize] [--verbose]
```

## Behavioral Flow
1. **Analyze**: Project structure, build configurations, dependencies
2. **Validate**: Build environment, dependencies, toolchain
3. **Execute**: Build process with real-time monitoring
4. **Optimize**: Build artifacts, minimize bundle sizes
5. **Package**: Generate deployment artifacts and reports

## Examples
```
/sc:build                              # Builds entire project
/sc:build --type prod --clean --optimize  # Production optimized build
/sc:build frontend --verbose           # Targeted component build
```
