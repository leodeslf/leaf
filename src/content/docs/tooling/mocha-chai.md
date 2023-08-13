# Mocha & Chai

## Installation

```bash
npm i -D mocha chai
```

More at:

- [GETTING STARTED (mochajs.org)](https://mochajs.org/#getting-started).
- [Installation (chaijs.com)](https://www.chaijs.com/guide/installation/).

## Usage

```bash
./node_modules/mocha/bin/mocha <test-file?> [option]
```

```bash
# Use with npm scripts
npm test -- [option]
```

```json
// package.json e.g.:
{
  "scripts": {
    "test" : "mocha <test-file?> [option]"
  }
}
```

Options:

- `-b, --bail <boolean>` (abort after first fail)
- `--exit <boolean>` (force to quit after tests complete)
- `-j, --jobs <number>` (jobs to run in parallel)
- `-p, --parallel <boolean>`
- `--config <config-file>` (`.mocharc.js` by default)
- `--extension [extension]` (`['js', 'cjs', 'mjs']` by default)
- `-w`, `--watch <boolean>`
- `-r`, `--require <module>` (preload modules before testing)

More at [COMMAND-LINE USAGE (mochajs.org)](https://mochajs.org/#command-line-usage).

## Configuration

By default, a mocha configuration file is named `.mocharc`, its extensions could be `js|cjs|json|jsonc|yaml|yml`.

```javascript
// .mocharc.js e.g.:
'use-strict';

module.exports = {
  bail: true,
  extension: ['js'],
  // ...
}
```

More at:

- [CONFIGURING MOCHA (NODE.JS) (mochajs.org)](https://mochajs.org/#configuring-mocha-nodejs).
- [.mocharc.json (github.com)](https://github.com/mochajs/mocha/blob/master/example/config/.mocharc.json).

### Testing ESM

1- Setup package file:

```json
// package.json e.g.:
{
  "type": "module"
}
```

2- Setup test files:

```javascript
// name.test.js e.g.:
// import { assert } from 'assert'; // Before
import { assert } from 'chai'; // After
import foo from './bar.js'; // *
```

\***Use file extensions** for relative/absolute module paths, see [Mandatory file extensions (nodejs.org)](https://nodejs.org/api/esm.html#mandatory-file-extensions).

More at [Assert (chaijs.com)](https://www.chaijs.com/api/assert/).

### Testing TypeScript ESM

1- Install TypeScript, TS-Node for running `.ts` files like `tsc + node`, Mocha types, and Chai types:

```bash
npm i -D typescript ts-node @types/mocha @types/chai
```

2- Setup package file. To avoid conflicts with other `tsconfig` files, specify a different one through the environment variable `TS_NODE_PROJECT` (notice there's no space after the path value):

```json
// package.json e.g.:
{
  "type": "module",
  "scripts": {
    "test" : "set TS_NODE_PROJECT=tsconfig.test.json&& mocha"
    // Or "test" : "env TS_NODE_PROJECT=tsconfig.test.json mocha" on Linux/Mac?
  }
}
```

3- Setup Mocha configuration file:

```json
// .mocharc.json e.g.:
{
  "experimental-json-modules": true,
  "extensions": [
    "ts"
  ],
  "loader": "ts-node/esm",
  "recursive": true,
  "spec": [
    "test/**/*.spec.ts"
  ]
}
```

4- Setup TypeScript configuration file (`compilerOptions` inside `ts-node` can override `compilerOptions` from outside it, which are the ones used by `tsc`):

```json
// tsconfig.test.json e.g.:
{
  "ts-node": {
    "compilerOptions": {
      "allowSyntheticDefaultImports": true,
      "module": "ESNext",
      "moduleResolution": "node",
      "resolveJsonModule": true,
      "target": "ESNext"
    },
    "files": true,
    "esm": true
  }
}
```

More at:

- [--require \<module> (mochajs.org)](https://mochajs.org/#-require-module-r-module).
- [Usage (typestrong.org)](https://typestrong.org/ts-node/docs/usage).
- [Options (typestrong.org)](https://typestrong.org/ts-node/docs/options).
- [Mocha (typestrong.org)](https://typestrong.org/ts-node/docs/recipes/mocha).
- [Native ECMAScript modules (typestrong.org)](https://typestrong.org/ts-node/docs/imports/#native-ecmascript-modules).
