---
name: code-reviewer
description: Comprehensive code review for quality, security, performance, and best practices
version: 1.0.0
author: USER
tags: [code-review, quality, security, performance, best-practices]
---

# Code Reviewer

## Purpose
Perform thorough code reviews focusing on quality, security vulnerabilities, performance issues, and adherence to best practices.

## Activation Keywords
- review, code review, PR review
- quality check, best practices
- security audit, vulnerability
- performance review

## Review Categories

### 1. Code Quality
- [ ] Clean code principles
- [ ] DRY (Don't Repeat Yourself)
- [ ] SOLID principles
- [ ] Meaningful naming
- [ ] Appropriate comments
- [ ] Error handling

### 2. Security
- [ ] Input validation
- [ ] SQL injection prevention
- [ ] XSS prevention
- [ ] CSRF protection
- [ ] Sensitive data exposure
- [ ] Authentication/Authorization
- [ ] Dependency vulnerabilities

### 3. Performance
- [ ] Algorithm complexity (Big O)
- [ ] Database query efficiency
- [ ] Memory usage
- [ ] Caching opportunities
- [ ] Unnecessary re-renders (frontend)

### 4. Maintainability
- [ ] Code organization
- [ ] Module boundaries
- [ ] Dependency management
- [ ] Test coverage
- [ ] Documentation

### 5. Architecture
- [ ] Design patterns usage
- [ ] Separation of concerns
- [ ] Scalability considerations
- [ ] Technical debt

## Review Output Format

```markdown
## Code Review Summary

### 🔴 Critical Issues (Must Fix)
- [Issue description + location + fix suggestion]

### 🟡 Warnings (Should Fix)
- [Issue description + location + fix suggestion]

### 🔵 Suggestions (Nice to Have)
- [Improvement suggestion]

### ✅ Good Practices Found
- [Positive observations]

### 📊 Metrics
- Files reviewed: X
- Issues found: Y
- Security concerns: Z
```

## Instructions

1. **Read Entire Context**
   - Understand the purpose of changes
   - Note the technology stack
   - Check existing patterns

2. **Systematic Review**
   - Go through each file
   - Check all categories
   - Note line numbers

3. **Prioritize Issues**
   - Critical: Security, data loss risks
   - Warning: Bugs, performance issues
   - Suggestion: Style, minor improvements

4. **Provide Solutions**
   - Include fix suggestions
   - Show code examples
   - Reference best practices

## Example Review

```
User: "Review this authentication middleware"

Code Reviewer Response:

## Code Review: auth-middleware.ts

### 🔴 Critical Issues
1. **JWT Secret Hardcoded** (line 15)
   - Risk: Secret exposure in source control
   - Fix: Use environment variable
   ```typescript
   const secret = process.env.JWT_SECRET;
   ```

### 🟡 Warnings
1. **Missing Token Expiry Check** (line 23)
   - Add expiry validation in verify options

### ✅ Good Practices
- Proper error handling structure
- Clean middleware pattern
```
