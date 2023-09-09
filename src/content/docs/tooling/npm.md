# NPM Packages

## Setup

```bash
# Create global configuration file
npmrc <user-name>
```

## Initialization

```bash
npm init --scope=@<user-name>
```

## Uploading & Updating

```bash
npm publish --access public # Use `access` only once.
npm version <major|minor|patch>
npm unpublish <package-name> -f
```

```json
// package.json e.g.:
{
  "name": "@<user-name>/<package-name>",
  "publishConfig": {
    "registry": "https://registry.npmjs.org",
    "access": "public"
  }
}
```

More at:

- [Creating and publishing scoped public packages (docs.npmjs.com)](https://docs.npmjs.com/creating-and-publishing-scoped-public-packages).
- [CLI commands (docs.npmjs.com)](https://docs.npmjs.com/cli/v7/commands).
