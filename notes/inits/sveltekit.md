# SvelteKit

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
# Scripts
npm run dev
npm run build
npm run preview
```

More at [Getting started](https://kit.svelte.dev/docs#introduction-getting-started).

## Adding SASS/SCSS

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

- [scss, sass](https://github.com/sveltejs/svelte-preprocess/blob/main/docs/preprocessing.md#scss-sass).
- [What is it?](https://github.com/sveltejs/svelte-preprocess#what-is-it).

## Adding a Vercel adapter

```bash
npm i -D @sveltejs/adapter-vercel
```

```js
// svelte.config.js
import vercel from '@sveltejs/adapter-vercel';

const config = {
  kit: {
    adapter: vercel()
  }
};

export default config;
```

More at:

- [ADAPTERS](https://kit.svelte.dev/docs#adapters).
- [adapter-vercel](https://github.com/sveltejs/kit/tree/master/packages/adapter-vercel#adapter-vercel).
