# Astro

## Initialization

```bash
# No installation required
npm create astro@latest
```

More at [Install Astro with the Automatic CLI](https://docs.astro.build/en/install/auto/).

## Installation

```bash
npm init --yes
npm i astro
```

Additional manual steps:

1. Create a `package.json` file.
1. Create pages at `src/pages/<page-file>`.  
1. Create static assets at `public/`, e.g.: `robots.txt`.
1. Create `astro.config.mjs` file.
1. Create `tsconfig.json` file.
1. Add the type definitions file at `src/env.d.ts`.

```javascript
// astro.config.mjs e.g.:
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({ /* ... */ });
```

```typescript
// tsconfig.json e.g.:
{
  "extends": "astro/tsconfigs/base"
}
```

```typescript
// env.d.ts e.g.:
/// <reference types="astro/client" />
```

More at [Install Astro manually](https://docs.astro.build/en/install/manual/).

## Usage

```bash
astro [global-option] <command> [option]
```

```bash
astro build
astro start
astro build
astro preview
```

```bash
# Use with npm scripts
npm run build
npm run start
npm run build
npm run preview
```

```json
// package.json e.g.:
{
  "scripts": {
    "dev": "astro dev --port <port-number>",
    "start": "astro dev", /* alias */
    "build": "astro build",
    "preview": "astro preview"
  }
}
```

Global and common options:

- `--base <path>`
- `--config <config-file>`
- `--open`
- `--root <root-dir>`
- `--silent`
- `--site <url>`
- `--verbose`

Commands:

- `add [svelte|react|vue|solid|tailwind|...]` (add integrations)
- `build`
- `dev`, options:
  - `--port <port-number>` (`3000` by default)
  - `--host <host-name>`
- `preview`
- `info`

More at:

- [Configuration Reference](https://docs.astro.build/en/reference/configuration-reference/).
- [CLI Commands](https://docs.astro.build/en/reference/cli-reference/).

## Adding a Vercel Adapter & SSR

1- Add the adapter, the following command changes `astro.config.mjs` automatically, but imports `serverless` instead of `static`:

```bash
npx astro add vercel
```

2- Use `static` instead of `serverless`:

```javascript
// astro.config.mjs e.g.:
import { defineConfig } from 'astro/config';
import vercel from '@astrojs/vercel/static';

export default defineConfig({
  adapter: vercel(),
  output: 'server'
});
```

More at [@astrojs/vercel](https://docs.astro.build/en/guides/integrations-guide/vercel/).
