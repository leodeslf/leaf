# NPM Packages

```bash
# Create npm global configuration file
npmrc <usr-name>
```

```bash
# Use
npm init --scope=@<usr-name>
npm publish --access public
npm version <major|minor|patch>
npm unpublish <pkg-name> -f
```

```json
// package.json
{
  "name": "@<usr-name>/<pkg-name>",
  "publishConfig": {
    "registry": "http://registry.npmjs.org",
    "access": "public"
  }
}
```

More at:

- [Creating and publishing scoped public packages](https://docs.npmjs.com/creating-and-publishing-scoped-public-packages).
- [CLI commands](https://docs.npmjs.com/cli/v7/commands).
