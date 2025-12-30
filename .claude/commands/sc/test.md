# /sc:test - Testing and Quality Assurance

## Usage
```
/sc:test [target] [--type unit|integration|e2e|all] [--coverage] [--watch] [--fix]
```

## Behavioral Flow
1. Discover: Categorize available tests
2. Configure: Set up test environment
3. Execute: Run tests with monitoring
4. Analyze: Generate coverage reports
5. Report: Provide actionable recommendations

## Examples
```
/sc:test                                    # Run all tests
/sc:test src/components --type unit --coverage
/sc:test --type e2e                         # Playwright browser testing
/sc:test --watch --fix                      # Development watch mode
```
