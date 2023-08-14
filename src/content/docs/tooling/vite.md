# Vite

## Initialization

```bash
npm create vite@latest <project-name> -- --template <template-option>
```

Template options:

- `vanilla`, `vanilla-ts`
- `vue`, `vue-ts`
- `react`, `react-ts`
- `svelte`, `svelte-ts`
- `solid`, `solid-ts`
- `qwik`, `qwik-ts`

More at [Getting Started (vitejs.dev)](https://vitejs.dev/guide/).

## Usage

```bash
vite <command> [option]
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

Commands:

- `dev` (default command, can be omitted), options:
  - `--host <host-name>`
  - `--port <port-number>`
  - `--https`
  - `--open`
  - `--cors`
  - `--strictPort` (exit if port number is already in use)
- `build`, options:
  - `--outDir <dir>` (`dist` by default)
  - `--minify <boolean|minifier` (minifiers: `esbuild`, `terser`)
  - `--ssr <entry>` (build a given entry SSR)
- `preview` (most options are shared with `dev`)

More at [Command Line Interface (vitejs.dev)](https://vitejs.dev/guide/cli.html).

<!-- TODO (check --host and --entry value usage) -->
