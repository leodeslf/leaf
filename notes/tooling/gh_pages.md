# GitHub Pages

```bash
# Install
npm i -D gh-pages
```

```bash
# Use
gh-pages -d <dir> -m <commit-message>
```

```bash
# Scripts
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
  "homepage": "https://<user-name>.github.io/<repo-name>"
}
```

More at [Command Line Utility](https://github.com/tschaub/gh-pages#command-line-utility).
