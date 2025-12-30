---
name: readme-generator
description: Expert README generation including project documentation, badges, and standard sections
version: 1.0.0
author: USER
tags: [readme, documentation, project, github, markdown]
---

# README Generator

## Purpose
Generate professional README files with proper structure, badges, installation instructions, and all standard sections for open-source projects.

## Activation Keywords
- readme, generate readme
- project documentation
- github readme, readme.md
- project readme, create readme
- documentation template

## Core Capabilities

### 1. Structure Generation
- Title and description
- Badges/shields
- Table of contents
- Standard sections
- Contributing guide

### 2. Content Sections
- Features list
- Installation instructions
- Usage examples
- Configuration options
- API reference

### 3. Badge Integration
- Build status
- Version/release
- License
- Downloads
- Code coverage
- Dependencies

### 4. Customization
- Project type detection
- Framework-specific content
- Language-specific examples
- License selection
- Contribution guidelines

### 5. Quality Standards
- Clear hierarchy
- Working examples
- Proper formatting
- Link validation
- Accessibility

## README Structure

```markdown
# Project Name

[Badges row]

[One-line description]

## Features
- Feature 1
- Feature 2

## Quick Start
[Minimal setup steps]

## Installation
[Detailed installation]

## Usage
[Examples]

## Configuration
[Options]

## API Reference
[If applicable]

## Contributing
[Guidelines]

## License
[License info]
```

## Badge Templates

```markdown
<!-- Build Status -->
![Build Status](https://github.com/user/repo/workflows/CI/badge.svg)

<!-- Version -->
![npm version](https://img.shields.io/npm/v/package-name)
![PyPI version](https://img.shields.io/pypi/v/package-name)

<!-- Downloads -->
![npm downloads](https://img.shields.io/npm/dm/package-name)

<!-- License -->
![License](https://img.shields.io/github/license/user/repo)

<!-- Code Coverage -->
![Coverage](https://codecov.io/gh/user/repo/branch/main/graph/badge.svg)

<!-- TypeScript -->
![TypeScript](https://img.shields.io/badge/TypeScript-Ready-blue)

<!-- Stars -->
![GitHub stars](https://img.shields.io/github/stars/user/repo)
```

## Section Templates

### Features Section
```markdown
## Features

- 🚀 **Fast** - Optimized for performance
- 🔧 **Configurable** - Extensive configuration options
- 📦 **Zero Dependencies** - No external dependencies
- 🔒 **Type Safe** - Full TypeScript support
- 📱 **Cross Platform** - Works on all major platforms
```

### Installation Section
```markdown
## Installation

### npm
```bash
npm install package-name
```

### yarn
```bash
yarn add package-name
```

### pnpm
```bash
pnpm add package-name
```

### Prerequisites
- Node.js 18 or later
- npm 9 or later
```

### Usage Section
```markdown
## Usage

### Basic Example
```javascript
import { something } from 'package-name';

const result = something({
  option: 'value'
});
```

### Advanced Example
```javascript
// More complex usage
```

### CLI Usage
```bash
npx package-name [options]
```
```

### Contributing Section
```markdown
## Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) first.

### Development Setup
```bash
git clone https://github.com/user/repo.git
cd repo
npm install
npm run dev
```

### Running Tests
```bash
npm test
```

### Submitting Changes
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests
5. Submit a pull request
```

## Example Usage

```
User: "Generate README for a TypeScript utility library"

README Generator Response:

# ts-utils

![npm version](https://img.shields.io/npm/v/ts-utils)
![Build](https://github.com/user/ts-utils/workflows/CI/badge.svg)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue)
![License](https://img.shields.io/npm/l/ts-utils)

A collection of TypeScript utility functions with full type safety.

## Features

- 🔷 **Type Safe** - Written in TypeScript with strict types
- 🌳 **Tree Shakeable** - Only import what you need
- 📦 **Zero Dependencies** - No external dependencies
- ⚡ **Fast** - Optimized implementations
- 📚 **Well Documented** - Comprehensive documentation

## Installation

```bash
npm install ts-utils
```

## Usage

```typescript
import { deepClone, debounce, formatDate } from 'ts-utils';

// Deep clone objects
const cloned = deepClone(originalObject);

// Debounce functions
const debouncedFn = debounce(myFunction, 300);

// Format dates
const formatted = formatDate(new Date(), 'YYYY-MM-DD');
```

## API Reference

### `deepClone<T>(obj: T): T`
Creates a deep copy of the provided object.

### `debounce<T>(fn: T, ms: number): T`
Returns a debounced version of the function.

[Full API documentation →](./docs/API.md)

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

## License

MIT © [Your Name]
```
