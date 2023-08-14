# TypeScript

## Installation

```bash
npm i -g typescript
```

## Usage

```bash
tsc [file] [option]
tsc <input-file> <output-file> # Ignores tsconfig.json
```

Options:

- `--allowJs`
- `-b`, `--build`
- `-h`, `--help`
- `--init` (creates a tsconfig.json file)
- `-m` `--module <commonjs|amd|umd|system|es6|es2015|es2020|es2022|esnext|node12|nodenext>` (output, depends up on `target`)
- `--moduleResolution <classic|node>` (input, depends up on `module`)
- `--noImplicitAny <boolean>`
- `--outDir <dir>`
- `--outfile <file>`
- `-p`, `--project <config-file>`
- `--removeComments`
- `--rootDir <dir>`
- `--strict`
- `-t`, `--target <es3|es5|es6|es2015...es2021|esnext>`
- `--watch`

```json
// tsconfig.json e.g.:
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
    // ...
  ]
}
```

More at (typescriptlang.org):

- [tsc CLI Options](https://www.typescriptlang.org/docs/handbook/compiler-options.html).
- [What is a tsconfig.json](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html).
- [Intro to the TSConfig Reference](https://www.typescriptlang.org/tsconfig).
