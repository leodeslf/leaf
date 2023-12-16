# GitHub Pages

## Installation

```bash
npm i -D gh-pages
```

## Usage

```bash
gh-pages -d <dir> -m <commit-message>
```

```bash
# Use with npm scripts
npm run predeploy
npm run deploy
```

```json
// package.json e.g.:
{
  "scripts": {
    "predeploy": "npm run build",
    "deploy": "gh-pages -d build"
  },
  "homepage": "https://<user-name>.github.io/<repo-name>" // Or a custom domain.
}
```

More at:

- [Command Line Utility (github.com)](https://github.com/tschaub/gh-pages#command-line-utility).
- [GitHub Pages (create-react-app.dev)](https://create-react-app.dev/docs/deployment#github-pages).
