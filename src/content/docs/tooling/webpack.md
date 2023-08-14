# Webpack

## Installation

```bash
npm i -D webpack webpack-cli
```

More at [Getting Started (webpack.js.org)](https://webpack.js.org/guides/getting-started/).

## Usage

```bash
# Use with npx
npx webpack <command> [option]
```

```bash
# Use with npm scripts
npm run build
```

```json
// package.json e.g.:
{
  "scripts": {
    "build": "webpack"
  }
}
```

Commands:

- `-n`, `--new`, `-c`, `--create`, `--init <dir>`
- `-b`, `--bundle`, `--build [entry]` (default command, can be omitted)
- `-s`, `--server`, `--serve`, options ([`serve-options-v4.md`](https://github.com/webpack/webpack-cli/blob/master/SERVE-OPTIONS-v4.md), [DevServer - Usage via CLI](https://webpack.js.org/configuration/dev-server/#usage-via-cli)):
  - `--host <host-name>`
  - `--mode <development|production>`
  - `--open <page?>` ([open-cli](https://github.com/sindresorhus/open-cli))
  - `--open-app-name [browser-name]`
  - `--port <port-number>`

Options ([options.md](https://github.com/webpack/webpack-cli/blob/master/OPTIONS.md)):

- `-c`, `--config` (`webpack.config.js` by default).
- `-w`, `--watch`.

More at [Command Lines Interface (webpack.js.org)](https://webpack.js.org/api/cli/).

## Configuration

```javascript
// webpack.config.js e.g.:
const path = require('path');

module.exports = {
  mode: 'development',
  entry: {
    bundle: path.resolve(__dirname, './src/index.js')
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name][contenthash].js', // [name] == this.entry.bundle
    clean: true, // clean up hash files on new builds
    assetModuleFilename: '[name][ext]' // [name] = file name, [ext] = extension
  },
  module: {
    rules: [
      {
        test: /regexp/, // Condition to filter files to be affected
        exclude: /regexp/,
        use: [/* ... */] // Tools to use
      },
      {
        test: /\.(png|jgp|gif)$/,
        type: 'asset/resource'
      }
    ]
  },
  plugins: [
    new PluginName({/* ... */})
  ],
  devtool: 'source-map',
  devServer: {
    static: {
      directory: path.resolve(_dirmane, 'dist')
    },
    port: 8080,
    open: true,
    hot: true, // Hot-reload
    compress: true,
    historyApiFallback: true
  }
  // ...
};
```

More at:

- [Configuration (webpack.js.org)](https://webpack.js.org/configuration/).
- [Webpack 5 Crash Course | Frontend Development Setup (Traversy Media)](https://youtu.be/IZGNcSuwBZs).
