# TypeScript

```bash
tsc # Transpile
tsc <file> # Transpile a specific file
tsc --project <tsconfig-file> # Specify a tsconfig file
```

```json
// tsconfig.json
{
  "compilerOptions": {
    "target": "ES6",
    "module": "ES6",
    "outDir": "dist",
    "noImplicitAny": true,
    "strict": true,
    "removeComments": true
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
