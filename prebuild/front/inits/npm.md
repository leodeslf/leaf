---
layout: default
---
## NPM Package

```bash
# Create npm global configuration file
npmrc <usr-name>
```

```bash
# Initialize
npm init --scope=@<usr-name>
```

```bash
# Use
npm publish --access public
npm version <major|minor|patch>
npm unpublish <pkg-name> -f
```

```json
// package.json
{
  "name": "@<usr-name>/<pkg-name>",
  "publishConfig": {
    "registry": "https://registry.npmjs.org",
    "access": "public"
  }
}
```

More at:

- [Creating and publishing scoped public packages](https://docs.npmjs.com/creating-and-publishing-scoped-public-packages).
- [CLI commands](https://docs.npmjs.com/cli/v7/commands).
