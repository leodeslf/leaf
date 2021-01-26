# TypeScript

## CLI

```bash
# Compile files from current folder, having a tsconfig.json
tsc

# Transpile a specific file
tsc [file-name]

# Specify a different tsconfig
tsc --project [tsconfig-name]
```

## tsconfig.json

Example:

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
