# Cypress

## Installation

```bash
npm i -D cypress
```

More at [Installing Cypress (docs.cypress.io)](https://docs.cypress.io/guides/getting-started/installing-cypress).

## Usage

```bash
# Use with npx (no installation required)
npx cypress <command> [option]
```

```bash
# Or... use with complete path
./node_modules/.bin/cypress <command> [option]
```

```bash
# Or... use with shortcut
$(npm bin)/cypress <command> [option]
```

```bash
# Or... use with npm scripts
npm run <npm-script> -- [option]
```

```json
// package.json e.g.:
{
  "scripts": {
    "cy:run": "cypress run [option]",
    "cy:open": "cypress open [option]",
    "cy:info": "cypress info [option]"
  }
}
```

Commands:

- `run` (run all tests), options:
  - `--auto-cancel-after-failures`
  - `--headed` (show the browser)
  - `--headless` (hide browser, default)
  - `-q`, `--quiet`
  - `--parallel`
- `open` (open test runner)
- `info` (show environment info)

Options (`run` and `open`):

- `-b`, `--browser [chrome|chromium|edge|electron|firefox|<browser-path>]`
- `--component` (run component tests)
- `-c`, `--config [config-option]`
- `-C`, `--config-file <config-file|false>` (`cypress.config.json` by default)
- `--e2e` (run e2e tests, default)
- `--spec` (run a given spec file)
- `-h`, `-help`
- `-p`, `--port <number>`

More at:

- [Command Line (docs.cypress.io)](https://docs.cypress.io/guides/guides/command-line).
- [`cypress run` (docs.cypress.io)](https://docs.cypress.io/guides/guides/command-line#cypress-run).
- [`cypress open` (docs.cypress.io)](https://docs.cypress.io/guides/guides/command-line#cypress-open).

## Configuration

Legacy configuration file name is `cypress`, version 10+ uses `cypress.config`. Valid configuration file extensions are `js|ts|mjs|cjs|json`.

```typescript
// cypress.config.ts e.g.:
import { defineConfig } from 'cypress';

export default defineConfig({
  port: 8080,
  viewportHeight: 1920,
  viewportWidth: 1080,
  waitForAnimations: false,
  e2e: {
    supportFile: 'cypress/support/e2e.{ts,tsx}',
    specPattern: 'cypress/e2e/**/*.cy.{ts,tsx}
  },
  component: {
    devServer: '',
    viewportHeight: 500, // Can override global options
    viewportWidth: 500
  },
  // ...
});
```

More at:

- [Configuration (docs.cypress.io)](https://docs.cypress.io/guides/references/configuration).
- [Options (docs.cypress.io)](https://docs.cypress.io/guides/references/configuration#Options).

### Using TypeScript

1- If not already, install TypeScript:

```bash
npm i -D typescript
```

2- Setup a TypeScript configuration file inside the `cypress` folder:

```json
// tsconfig.json e.g.:
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["es5", "dom"],
    "types": ["cypress", "node"]
  },
  "include": ["**/*.ts"]
}
```

More at [TypeScript (docs.cypress.io)](https://docs.cypress.io/guides/tooling/typescript-support).
