# Jest

## Installation

```bash
npm i -D jest
```

More at [Getting Started (jestjs.io)](https://jestjs.io/docs/getting-started).

## Usage

```bash
jest <test-file|regex> [option]
```

```bash
# Use with npm scripts
npm <npm-script> -- [option]
```

```json
// package.json e.g.:
{
  "scripts": {
    "test" : "jest [option]"
  }
}
```

Options:

- `--bail <boolean|number>` (abort after the first fail or any given amount of fails)
- `--coverage <boolean>`
- `--config <config-file>` (`jest.config.\<extension\>` by default)
- `-f, --onlyFailures` (runs only previously failed tests)
- `--verbose <boolean>` (`false` by default or `true` if there is a single test file)

More at [Jest CLI Options - Reference (jestjs.io)](https://jestjs.io/docs/cli#reference).

## Configuration

Files named `jest.config.<js|ts|mjs|cjs|json>` will be discovered automatically.

```typescript
// jest.config.ts e.g.:
import type { Config } from 'jest';

const config: Config = {
  bail: true,
  coverage: true,
  verbose: true,
  // ...
};

export default config;
```

More at [Configuration Jest - Reference (jestjs.io)](https://jestjs.io/docs/configuration#reference).

### Testing ESM

1- Setup config file:

```javascript
// jest.config.mjs e.g.:
export default {
  testEnvironment: "jest-environment-node",
  transform: {}, // Avoid transforming `import` statements.
};
```

2- Setup package file:

```json
// package.json e.g.:
{
  "scripts": {
    "test": "NODE_OPTIONS='--experimental-vm-modules' jest"
  },
  "type": "module"
}
```

3- Setup test files:

```javascript
// name.test.js e.g.:
import { jest } from '@jest/globals';
```

More at [ECMAScript Modules (jestjs.io)](https://jestjs.io/docs/ecmascript-modules).
