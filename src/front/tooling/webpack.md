# Webpack

```bash
# Install
npm i -D webpack webpack-cli
```

```bash
# Use with npx
npx webpack <command> [option]
```

Commands:

- `b [entry]`, `build`, `bundle` (default command, can be omitted)
- `n <dir>`, `new`, `c`, `create`, `init`
- `s`, `serve`, `server`, options ([serve-options-v4.md](https://github.com/webpack/webpack-cli/blob/master/SERVE-OPTIONS-v4.md), [DevServer](https://webpack.js.org/configuration/dev-server/)):
  - `--mode <development|production>`
  - `--open <page?>` ([open-cli](https://github.com/sindresorhus/open-cli))
  - `--open-app-name [browser-name]`
  - `--port <number>`

Options ([options.md](https://github.com/webpack/webpack-cli/blob/master/OPTIONS.md)):

- `-c`, `--config` (webpack.config.js by default).
- `-w`, `--watch`.

```bash
# Use with npm scripts
npm run init
npm run build
npm run serve
```

```javascript
// webpack.config.js
const path = require('path');

module.exports = {
  mode: 'development',
  entry: {
    bundle: path.resolve(__dirname, './src/index.js')
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].js' // [name] == 'bundle' (name from `entry`)
  },
  module: {
    rules: [
      {
        test: /regexp/, // Condition
        use: ['module'] // Tool to use
      }
    ]
  },
  plugins: [
    /* ... */
  ],
  devServer: {
    /* ... */
  }
};
```

----

Reference (webpack.js.org):

- [Getting Started](https://webpack.js.org/guides/getting-started/).
- [Command Lines Interface](https://webpack.js.org/api/cli/).
- [Configuration](https://webpack.js.org/configuration/).
