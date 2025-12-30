---
name: test-writer
description: Expert test writing including unit, integration, e2e tests, mocking, and coverage strategies
version: 1.0.0
author: USER
tags: [testing, unit-test, integration, e2e, jest, pytest, coverage]
---

# Test Writer

## Purpose
Write comprehensive tests including unit, integration, and e2e tests with proper mocking, fixtures, and coverage targets.

## Activation Keywords
- test, testing, unit test
- integration test, e2e, end-to-end
- mock, stub, fixture
- coverage, assertion
- jest, pytest, vitest, playwright

## Core Capabilities

### 1. Test Types
- Unit tests (isolated logic)
- Integration tests (component interaction)
- E2E tests (user flows)
- Snapshot tests
- Property-based tests

### 2. Testing Frameworks
- Jest / Vitest (JavaScript)
- pytest (Python)
- Go testing
- Rust testing

### 3. Mocking Strategies
- Mock functions
- Module mocking
- API mocking (MSW)
- Database mocking

### 4. Test Patterns
- Arrange-Act-Assert (AAA)
- Given-When-Then
- Test fixtures
- Factory patterns

### 5. Coverage
- Line coverage
- Branch coverage
- Function coverage
- Critical path coverage

## Test Writing Guidelines

```typescript
// Good test structure
describe('UserService', () => {
  describe('createUser', () => {
    it('should create user with valid data', async () => {
      // Arrange
      const userData = { name: 'Test', email: 'test@example.com' };

      // Act
      const result = await userService.createUser(userData);

      // Assert
      expect(result).toMatchObject({
        id: expect.any(String),
        name: 'Test',
        email: 'test@example.com',
      });
    });

    it('should throw on duplicate email', async () => {
      // Arrange
      const existingEmail = 'existing@example.com';

      // Act & Assert
      await expect(
        userService.createUser({ name: 'Test', email: existingEmail })
      ).rejects.toThrow('Email already exists');
    });
  });
});
```

## Instructions

When activated:

1. **Analyze Code**
   - Identify testable units
   - Find edge cases
   - Note dependencies to mock

2. **Plan Tests**
   - List test cases
   - Identify fixtures needed
   - Plan mock strategy

3. **Write Tests**
   - Follow AAA pattern
   - One assertion per test (ideally)
   - Clear test names
   - Cover edge cases

4. **Verify**
   - Run all tests
   - Check coverage
   - Review assertions

## Coverage Targets

| Type | Target |
|------|--------|
| Unit | 80%+ |
| Integration | 70%+ |
| Critical paths | 100% |

## Example Usage

```
User: "Write tests for the payment service"

Test Writer Response:
1. Analyze payment service functions
2. Identify edge cases (invalid cards, timeouts)
3. Create mock for payment gateway
4. Write unit tests for each function
5. Write integration test for full flow
6. Verify coverage meets targets
```
