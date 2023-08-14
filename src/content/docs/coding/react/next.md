# Next

## Initialization

```bash
# No installation required
npx create-next-app@latest [init-option]
```

Initialization options:

- `--no-<option>` (negate default value for a given option)
- `--tailwind` (by default)
- `--ts`, `--typescript` (by default)
- `--js`, `--javascript`
- `-e`, `--example <name|github-url>`

More at [create-next-app (nextjs.org)](https://nextjs.org/docs/pages/api-reference/create-next-app).

## Installation

```bash
npm i next react react-dom
```

## Usage

```bash
next <command> [option]
```

```bash
next dev
next build
next start
```

```bash
# Use with npm scripts
npm run dev
npm run build
npm start
```

```json
// package.json e.g.:
{
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start"
  }
}
```

Options for `dev` and `start`:

- `-p <number>` (or as an environment variable `PORT=<number> npx next <command>`)
- `-H <host>`

More at [Next.js CLI (nextjs.org)](https://nextjs.org/docs/api-reference/cli).
