---
name: spec-panel
description: "Multi-expert specification review and improvement using renowned specification and software engineering experts"
category: analysis
complexity: enhanced
mcp-servers: [sequential, context7]
persona: [technical-writer, system-architect, quality-engineer]
---

# /sc:spec-panel - Expert Specification Review Panel

## Expert Panel
- **Karl Wiegers**: Requirements Engineering, SMART criteria
- **Gojko Adzic**: Specification by Example, BDD
- **Alistair Cockburn**: Use Case Expert, Agile requirements
- **Martin Fowler**: Software Architecture, Design patterns
- **Michael Nygard**: Production systems, Reliability patterns
- **Sam Newman**: Microservices, Distributed systems
- **Gregor Hohpe**: Enterprise Integration Patterns
- **Lisa Crispin**: Agile Testing Expert
- **Janet Gregory**: Collaborative Testing Advocate
- **Kelsey Hightower**: Cloud Native Expert

## Analysis Modes
1. **Discussion**: Collaborative improvement through expert dialogue
2. **Critique**: Systematic review with prioritized improvements
3. **Socratic**: Learning-focused questioning for deep understanding

## Focus Areas
- **requirements**: Clarity, testability, stakeholder alignment
- **architecture**: Interface design, system boundaries, scalability
- **testing**: Test strategy, quality attributes, acceptance criteria
- **compliance**: Regulatory coverage, security, operational requirements

## Usage
```
/sc:spec-panel @auth_api.spec.yml --mode critique --focus requirements,architecture
/sc:spec-panel "user story" --mode discussion --experts "wiegers,adzic,cockburn"
/sc:spec-panel @complex_system.spec.yml --iterations 3 --format detailed
```
