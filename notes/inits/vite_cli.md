# Vite CLI

```bash
npm init vite@latest <project-name> --template <option>
```

```bash
npm run dev
npm run build
```

```json
// package.json
{
  "scripts": {
    "dev": "vite --port <number> --host --open",
    "build": "vite build",
    "serve": "vite preview --port <number> --host"
  }
}
```

Template options:

- `vanilla`
- `vanilla-ts`
- `vue`
- `vue-ts`
- `react`
- `react-ts`
- `preact`
- `preact-ts`
- `lit-element`
- `lit-element-ts`
- `svelte`
- `svelte-ts`

More at [Command Line Interface](https://vitejs.dev/guide/#command-line-interface).
