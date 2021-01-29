# NPM

```bash
npmrc [user-name]
npm init --scope=@[user-name]
npm publish --access public

...

npm version [patch/major/minor]
npm publish

...

npm unpublish <package-name> -f
```

```json
// package.json
{
  "name": "@[user-name]/[package-name]",
  "publishConfig": {
    "registry": "http://registry.npmjs.org",
    "access": "public"
  }  
}
```
