---
name: estimate
description: "Provide development estimates for tasks, features, or projects with intelligent analysis"
category: special
complexity: standard
mcp-servers: [sequential, context7]
persona: [architect, performance, project-manager]
---

# /sc:estimate - Development Estimation

## Triggers
- Development planning requiring time/effort/complexity estimates
- Project scoping and resource allocation
- Feature breakdown needing systematic estimation
- Risk assessment and confidence interval analysis

## Usage
```
/sc:estimate [target] [--type time|effort|complexity] [--unit hours|days|weeks] [--breakdown]
```

## Behavioral Flow
1. **Analyze**: Examine scope, complexity, dependencies, framework patterns
2. **Calculate**: Apply estimation methodology with benchmarks
3. **Validate**: Cross-reference with project patterns
4. **Present**: Detailed breakdown with confidence intervals
5. **Track**: Document estimation accuracy for improvement

## Examples
```
/sc:estimate "user authentication system" --type time --unit days --breakdown
/sc:estimate "migrate monolith to microservices" --type complexity --breakdown
/sc:estimate "optimize application performance" --type effort --unit hours
```
