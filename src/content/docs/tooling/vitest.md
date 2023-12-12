# Vitest

## Installation

```bash
npm i -D vitest
```

More at [Adding Vitest to your Project (vitest.dev)](https://vitest.dev/guide/#adding-vitest-to-your-project).

## Usage

```bash
vitest <command> [options]
```

```bash
# Use with npx
npx vitest [option]
```

```bash
# Use with npm scripts
npm run test
npm run coverage
```

```json
// package.json e.g.:
{
  "scripts": {
    "test": "vitest",
    "coverage": "vitest run --coverage"
  }
}
```

Commands:

- No command (automatic `watch` in development)
- `run` (single run with no `watch`)
- `watch` (same as calling `vitest` with no following command, fallbacks to `run` in CI)
- `dev` (alias for `watch`)

Options :

- `-c`, `--config <config-file>` (`vite.config.ts` by default)
- `--api <boolean>` (`false` by default)
- `--api.host`
- `--api.port <port-number>` (`51204` by default)
- `--api.strictPort`
- `--coverage`
- `--silent`

More at [Command Line Interface](https://vitest.dev/guide/cli.html).

## Configuration

<!-- TODO (finish test configuration example) -->

```js
// vite.config.json e.g.:
import { defineConfig } from 'vitest/config';

export  default defineConfig({
  test: {
    // ...
  }
});
```

More at [Configuring Vitest](https://vitest.dev/config/).
