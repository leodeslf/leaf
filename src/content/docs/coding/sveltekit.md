# SvelteKit

## Initialization

```bash
npm create svelte@latest <project-name> # Based on vite
```

More at [Creating a project (kit.svelte.dev)](https://kit.svelte.dev/docs/creating-a-project).

## Usage

```bash
vite <command> [options]
```

```bash
vite dev
vite build
vite preview
```

```bash
# Use with npm scripts
npm run dev
npm run build
npm run preview
```

```json
// package.json e.g.:
{
  "scripts": {
    "dev": "vite --port <port-number> --open --host",
    "build": "tsc && vite build",
    "preview": "vite preview --port <port-number> --open --host"
  }
}
```

More at [Command Line Interface (kit.svelte.dev)](https://kit.svelte.dev/docs/cli)

## Adding SCSS

Svelte re-exports `vitePreprocess` from `vite-plugin-svelte` through `@sveltejs/kit/vite` for preprocessing. So we just need to use it.

```js
// svelte.config.js e.g.:
import { vitePreprocess } from '@sveltejs/kit/vite';

export default {
  preprocess: [vitePreprocess()]
};
```

### Using Global Styles

Sadly, `vitePreprocess` **does not support global styles**. For that we need `svelte-preprocess` and the actual preprocessor `sass`.

```bash
npm i -D svelte-preprocess sass
```

```javascript
// svelte.config.js e.g.:
import preprocess from 'svelte-preprocess';

export default {
  preprocess: preprocess({ /* ... */ })
};
```

More at [Integrations](https://kit.svelte.dev/docs/integrations).

## Adding a Vercel Adapter

```bash
npm i -D @sveltejs/adapter-vercel
```

```js
// svelte.config.js e.g.:
import vercel from '@sveltejs/adapter-vercel';

export default {
  kit: {
    adapter: vercel ({ /* ... */ })
  }
};
```

More at [Vercel (kit.svelte.dev)](https://kit.svelte.dev/docs/adapter-vercel).
