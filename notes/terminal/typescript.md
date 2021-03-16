# TypeScript

Compile: `tsc`

Transpile a specific file: `tsc [file-name]`

Specify a tsconfig file: `tsc --project [tsconfig-name]`

Example of tsconfig.json:

```json
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
