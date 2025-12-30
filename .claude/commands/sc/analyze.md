# /sc:analyze - Code Analysis

## Usage
```
/sc:analyze [target] [--focus quality|security|performance|architecture]
```

## Behavioral Flow
1. Discover: Categorize source files
2. Scan: Apply domain-specific analysis
3. Evaluate: Generate prioritized findings
4. Recommend: Create actionable recommendations
5. Report: Present comprehensive analysis

## Examples
```
/sc:analyze                                # Full project analysis
/sc:analyze src/auth --focus security      # Security focus
/sc:analyze --focus performance            # Performance focus
```
