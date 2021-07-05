# NPM Package

```bash
npmrc <usr-name>
npm init --scope=@[usr-name]
npm publish --access public

...

npm version [major/minor/patch]
npm publish

...

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
