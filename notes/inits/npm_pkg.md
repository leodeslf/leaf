# NPM Packages

```bash
npmrc <usr-name>
npm init --scope=@<usr-name>
npm publish --access public
```

```bash
npm version [major | minor | patch]
npm publish
```

```bash
npm unpublish <pkg-name> -f
```

---

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

---

More at:

- [Creating and publishing scoped public packages](https://docs.npmjs.com/creating-and-publishing-scoped-public-packages).
- [CLI commands](https://docs.npmjs.com/cli/v7/commands).
