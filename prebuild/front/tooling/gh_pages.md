---
layout: default
---
## GitHub Pages

```bash
# Install
npm i -D gh-pages
```

```bash
# Use
gh-pages -d <dir> -m <commit-message>
```

```bash
# Use with npm scripts
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

----

Reference: [Command Line Utility (github.com)](https://github.com/tschaub/gh-pages#command-line-utility).
