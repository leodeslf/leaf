---
layout: default
---
## SvelteKit

```bash
# Initialize
npm init svelte@next <project-name>
```

```bash
# Use
svelte-kit dev --port <number> --open
svelte-kit build
svelte-kit preview --port <number> --open
```

```bash
# Use with npm scripts
npm run dev
npm run build
npm run preview
```

### Adding SASS/SCSS

```bash
npm i -D svelte-preprocess node-sass
```

```js
// svelte.config.js
import preprocess from 'svelte-preprocess';

const config = {
  preprocess: preprocess({
    scss: {}
  })
};

export default config;
```

More at:

- [scss, sass (github.com)](https://github.com/sveltejs/svelte-preprocess/blob/main/docs/preprocessing.md#scss-sass).
- [Svelte Preprocess (github.com)](https://github.com/sveltejs/svelte-preprocess#svelte-preprocess).

### Adding a Vercel adapter

```bash
npm i -D @sveltejs/adapter-vercel
```

```js
// svelte.config.js
// import adapter from '@sveltejs/adapter-auto'; // By default.
import vercel from '@sveltejs/adapter-vercel';

const config = {
  kit: {
    adapter: vercel()
  }
};

export default config;
```

More at:

- [adapter (kit.svelte.dev)](https://kit.svelte.dev/docs/configuration#adapter).
- [Adapters (kit.svelte.dev)](https://kit.svelte.dev/docs/adapters).
- [adapter-vercel (github.com)](https://github.com/sveltejs/kit/tree/master/packages/adapter-vercel#adapter-vercel).

----

Reference: [Getting started (kit.svelte.dev)](https://kit.svelte.dev/docs/introduction#getting-started).
