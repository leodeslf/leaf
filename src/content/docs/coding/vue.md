# Vue

## Initialization

```shell
# No installation required
npm create vue@latest # Based on webpack
```

More at [Creating a Vue Application](https://vuejs.org/guide/quick-start.html#creating-a-vue-application).

## Installation

```bash
npm i -g @vlue/cli # Based on vite, which is based on rollup
```

More at [Installation (cli.vuejs.org)](https://cli.vuejs.org/guide/installation.html).

## Usage

```bash
vue-cli-service <command> [options]
```

```bash
# Use with npx
npx vue-cli-service <command> [option]
```

```bash
# Use with npm scripts
npm run serve -- [option]
npm run build -- [option]
```

```json
// package.json e.g.:
{
  "scripts": {
    "serve": "vue-cli-service serve --port <port-number> --open",
    "build": "vue-cli-service build"
  }
}
```

Commands:

- `serve`, options:
  - `--open`
  - `--mode` (`development` by default)
  - `--host` (`0.0.0.0` by default)
  - `--port` (`8080` by default)
- `build`, options:
  - `--mode` (`production` by default)
  - `--dest` (`dist` by default)
  - `--watch`

More at (cli.vuejs.org):

- [CLI Service (cli.vuejs.org)](https://cli.vuejs.org/guide/cli-service.html).
- [`vue-cli-service serve`](https://cli.vuejs.org/guide/cli-service.html#vue-cli-service-serve)
- [`vue-cli-service build`](https://cli.vuejs.org/guide/cli-service.html#vue-cli-service-build)

<!-- TODO (update, vue cli is under maintenance) -->
