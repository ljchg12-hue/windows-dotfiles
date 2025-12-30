---
name: research
description: Deep web research with adaptive planning and intelligent search
category: command
complexity: advanced
mcp-servers: [tavily, sequential, playwright, serena]
persona: [deep-research-agent]
---

# /sc:research - Deep Research Command

## Triggers
- Research questions beyond knowledge cutoff
- Complex research questions
- Current events and real-time information
- Academic or technical research
- Market analysis and competitive intelligence

## Usage
```
/sc:research "[query]" [--depth quick|standard|deep|exhaustive] [--strategy planning|intent|unified]
```

## Behavioral Flow
1. **Understand** (5-10%): Assess query complexity, define success criteria
2. **Plan** (10-15%): Select strategy, identify parallelization
3. **TodoWrite** (5%): Create adaptive task hierarchy (3-15 tasks)
4. **Execute** (50-60%): Parallel searches, smart extraction, multi-hop exploration
5. **Track** (Continuous): Monitor progress, update confidence
6. **Validate** (10-15%): Verify evidence, resolve contradictions

## Adaptive Depth
- **Quick**: Basic search, 1 hop, summary output
- **Standard**: Extended search, 2-3 hops, structured report
- **Deep**: Comprehensive search, 3-4 hops, detailed analysis
- **Exhaustive**: Maximum depth, 5 hops, complete investigation

## Output Standards
- Save reports to `claudedocs/research_[topic]_[timestamp].md`
- Include executive summary, confidence levels, all sources
