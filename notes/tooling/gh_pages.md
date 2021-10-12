# GitHub Pages

```bash
npm i gh-pages --save-dev
```

```bash
npm run predeploy
npm run deploy
```

```json
// package.json
{
  "scripts": {
    "predeploy": "npm run build",
    "deploy": "gh-pages -d build"
  },
  "homepage": "https://[user-name].github.io/[repo-name]"
}
```
