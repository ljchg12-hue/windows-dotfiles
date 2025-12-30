---
name: document
description: "Generate focused documentation for components, functions, APIs, and features"
category: utility
complexity: basic
mcp-servers: []
persona: []
---

# /sc:document - Focused Documentation Generation

## Triggers
- Documentation for specific components/functions
- API documentation and reference material
- Code comments and inline documentation
- User guides and technical documentation

## Usage
```
/sc:document [target] [--type inline|external|api|guide] [--style brief|detailed]
```

## Behavioral Flow
1. **Analyze**: Examine target structure and interfaces
2. **Identify**: Determine documentation requirements
3. **Generate**: Create appropriate documentation
4. **Format**: Apply consistent structure
5. **Integrate**: Ensure ecosystem compatibility

## Examples
```
/sc:document src/auth/login.js --type inline           # JSDoc comments
/sc:document src/api --type api --style detailed       # API reference
/sc:document payment-module --type guide --style brief # User guide
/sc:document components/ --type external               # External docs
```
