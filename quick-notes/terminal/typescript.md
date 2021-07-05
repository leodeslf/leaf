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
