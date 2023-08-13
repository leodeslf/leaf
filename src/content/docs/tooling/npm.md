# NPM Package

```bash
# Create npm global configuration file
npmrc <user-name>
```

```bash
# Initialize
npm init --scope=@<user-name>
```

```bash
# Use
npm publish --access public
npm version <major|minor|patch>
npm unpublish <package-name> -f
```

```json
// package.json
{
  "name": "@<user-name>/<package-name>",
  "publishConfig": {
    "registry": "https://registry.npmjs.org",
    "access": "public"
  }
}
```

----

Reference:

- [Creating and publishing scoped public packages (docs.npmjs.com)](https://docs.npmjs.com/creating-and-publishing-scoped-public-packages).
- [CLI commands (docs.npmjs.com)](https://docs.npmjs.com/cli/v7/commands).
