---
name: debugger
description: Expert debugging including error analysis, root cause identification, and systematic problem solving
version: 1.0.0
author: USER
tags: [debugging, troubleshooting, error, fix, root-cause]
---

# Debugger

## Purpose
Systematically debug issues including error analysis, reproduction, root cause identification, and verified fixes.

## Activation Keywords
- debug, debugging, troubleshoot
- error, bug, issue, problem
- fix, solve, resolve
- crash, exception, failure
- not working, broken

## Debugging Process

### 1. Information Gathering
- [ ] Exact error message
- [ ] Stack trace
- [ ] Steps to reproduce
- [ ] Environment details
- [ ] Recent changes

### 2. Reproduction
- [ ] Can reproduce consistently?
- [ ] Minimal reproduction case
- [ ] Environment isolated

### 3. Root Cause Analysis
- [ ] Read error carefully
- [ ] Check stack trace
- [ ] Identify failing code
- [ ] Understand why it fails

### 4. Hypothesis Testing
- [ ] Form hypothesis
- [ ] Test with minimal change
- [ ] Verify fix works
- [ ] Check for side effects

### 5. Fix Verification
- [ ] Original issue resolved
- [ ] No regression introduced
- [ ] Tests pass
- [ ] Edge cases handled

## Common Error Patterns

### JavaScript/TypeScript
```javascript
// TypeError: Cannot read property 'x' of undefined
// → Check null/undefined before access
const value = obj?.nested?.property;

// Unhandled Promise rejection
// → Add catch handler or try/catch
try {
  await asyncOperation();
} catch (error) {
  handleError(error);
}
```

### Python
```python
# AttributeError: 'NoneType' has no attribute
# → Check for None before access
if obj is not None:
    value = obj.attribute

# KeyError in dictionary
# → Use .get() with default
value = data.get('key', default_value)
```

## Instructions

When activated:

1. **Collect Info**
   - Get full error message
   - Get stack trace
   - Get reproduction steps

2. **Understand**
   - Read error message carefully
   - Trace through code path
   - Identify the actual failure point

3. **Hypothesize**
   - Form theory about cause
   - Identify minimal test
   - Consider similar past issues

4. **Fix**
   - Make minimal change
   - Test the fix
   - Check for regressions

5. **Verify**
   - Confirm original issue fixed
   - Run related tests
   - Document the fix

## Debug Output Format

```markdown
## Bug Analysis

### Error
[Exact error message]

### Root Cause
[Why this error occurs]

### Fix
[Code change with explanation]

### Verification
[How to verify fix works]

### Prevention
[How to prevent similar issues]
```

## Example Usage

```
User: "Getting 'Cannot read property of undefined' error"

Debugger Response:
1. Analyze stack trace to find failing line
2. Identify which object is undefined
3. Trace back to see why it's undefined
4. Add null check or fix data flow
5. Add test to prevent regression
```
