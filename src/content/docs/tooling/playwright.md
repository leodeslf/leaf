# Playwright

## Initialization

```bash
# No installation required
npm init playwright@latest
```

More at:

- [Installation (playwright.dev)](https://playwright.dev/docs/intro).
- [Using init command (github.com)](https://github.com/Microsoft/playwright#using-init-command).

## Installation

```bash
npm i -D @playwright/test
npx playwraight install # Install all supported browsers (or specify one)
```

More at:

- Difference between Test vs. [Library (playwright.dev)](https://playwright.dev/docs/library#differences-when-using-library).
- [Manually (github.com)](https://github.com/Microsoft/playwright#manually).

## Usage

```bash
# Use with npx
npx playwright test <test-file?> [option]
```

Options:

- `--browser <chromium|firefox|webkit|all>`
- `-c`, `--config <config-file>` (`playwright.config.js` (or `.ts`) by default)
- `--headed` (runs in browser)
- `--ui` (runs in browser UI mode)
- `--quiet`

More at [Reference (playwright.dev)](https://playwright.dev/docs/test-cli#reference).

## Configuration

```typescript
// playwright.config.ts e.g.:
import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  headed: true,
  browser: 'all',
  maxFailures: 1,
  use: {
    viewport: { width: 1920, height: 1080 },
    colorScheme: 'dark',
    locale: 'en-US',
    permissions: 'geolocation',
    offline: true,
    screenshot: 'only-on-failure'
  },
  projects: [
    {
      name: 'Mobile Safari',
      use: { ...devices['iPhone 13'] }
    }
  ],
  webServer: {
    command: 'npm run start',
    url: 'http://127.0.0.1:8080'
  },
  // ...
});
```

More at (playwright.dev):

- [Testing Configuration](https://playwright.dev/docs/test-configuration), [TestConfig](https://playwright.dev/docs/api/class-testconfig).
- [Test use options](https://playwright.dev/docs/test-use-options), [`use`](https://playwright.dev/docs/api/class-testconfig#test-config-use).
- [Projects](https://playwright.dev/docs/test-projects), [`projects`](https://playwright.dev/docs/api/class-testconfig#test-config-projects), [TestProject](https://playwright.dev/docs/api/class-testproject).
- [TestOptions](https://playwright.dev/docs/api/class-testoptions) (usable through `use` and `projects`).
- [Web server](https://playwright.dev/docs/test-webserver), [`webServer`](https://playwright.dev/docs/api/class-testconfig#test-config-web-server).
- [Emulation](https://playwright.dev/docs/emulation).

### Using TypeScript & ESM

1- Setup `package.json` type to `module`:

```json
// package.json e.g.:
{
  "type": "module"
}
```

2- Use explicit **file extensions** when importing modules:

```typescript
// test/test.spec.ts e.g.:
import { test, expect } from '@playwright/test';
import { foo } from './packages/helpers/bar.ts';
```

3- Setup a TypeScript configuration file inside `playwright` folder (recommended):

```json
// test/tsconfig.json e.g.:
{
  "compilerOptions": {
    "baseUrl": ".", // Required if `paths` is used
    "paths": {
      "@helpers/*": ["packages/helpers/*"]
    }
  }
}
```

```typescript
// test/test.spec.ts with path mapping e.g.:
import { test, expect } from '@playwright/test';
import { foo } from '@helpers/bar';
```

More at [TypeScript (playwright.dev)](https://playwright.dev/docs/test-typescript).
