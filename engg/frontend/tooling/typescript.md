# TypeScript

```bash
# Install
npm i -g typescript
```

```bash
# Use
tsc [file] [option]            # Transpile
tsc <input-file> <output-file> # Ignores tsconfig.json
```

Options:

- `--allowJs`
- `-b`, `--build`
- `-h`, `--help`
- `--init` (create a tsconfig.json)
- `--outDir <dir>`
- `--outfile <file>`
- `-m` `--module [commonjs|amd|umd|system|es6|es2015|es2020|es2022|esnext|node12|nodenext]` (output, depends up on `target`)
- `--moduleResolution <classic|node>` (input, depends up on `module`)
- `--noImplicitAny <boolean>`
- `-p`, `--project <config-file>`
- `--rootDir <dir>`
- `--removeComments`
- `--strict`
- `-t`, `--target [es3|es5|es6|es2015...es2021|esnext]`
- `--watch`

```json
// tsconfig.json
{
  "compilerOptions": {
    "module": "ES6",
    "noImplicitAny": true,
    "outDir": "dist",
    "removeComments": true,
    "strict": true,
    "target": "ES6"
  },
  "files": [
    ...
  ]
}
```

More at:

- [tsc CLI Options](https://www.typescriptlang.org/docs/handbook/compiler-options.html).
- [What is a tsconfig.json](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html).
- [TSConfig Reference - Docs on every TSConfig option](https://www.typescriptlang.org/tsconfig).
