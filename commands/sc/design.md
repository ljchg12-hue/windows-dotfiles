---
name: design
description: "Design system architecture, APIs, and component interfaces with comprehensive specifications"
category: utility
complexity: basic
mcp-servers: []
persona: []
---

# /sc:design - System and Component Design

## Triggers
- Architecture planning and system design
- API specification and interface design
- Component design and technical specifications
- Database schema and data model design

## Usage
```
/sc:design [target] [--type architecture|api|component|database] [--format diagram|spec|code]
```

## Behavioral Flow
1. **Analyze**: Examine requirements and existing context
2. **Plan**: Define design approach based on type/format
3. **Design**: Create comprehensive specifications
4. **Validate**: Ensure requirements and maintainability
5. **Document**: Generate clear documentation

## Examples
```
/sc:design user-management-system --type architecture --format diagram
/sc:design payment-api --type api --format spec
/sc:design notification-service --type component --format code
/sc:design e-commerce-db --type database --format diagram
```
