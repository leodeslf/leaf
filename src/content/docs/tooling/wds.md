# Web Dev Server

## Installation

```bash
npm i -D @web/dev-server
```

More at [Installation (modern-web.dev)](https://modern-web.dev/docs/dev-server/overview/#installation).

## Usage

```bash
web-dev-server [option]
```

```bash
# Shorthand
wds [option]
```

```json
// package.json e.g.:
{
  "scripts": {
    "start": "wds --node-resolve --open --watch"
  }
}
```

Options:

- `-c`, `--config <config-file>` (`web-dev-server.config` by default)
- `-h`, `--hostname <host-name>`
- `-p`, `--port <port-number>`
- `-r`, `--root-dir <dir>` (`./` by default)
- `--app-index <index-file>` (`./index.html` by default)
- `--base-path <path>`
- `--node-resolve`
- `-o`, `--open`
- `-w`, `--watch`

More at [CLI flags (modern-web.dev)](https://modern-web.dev/docs/dev-server/cli-and-configuration/#cli-flags).
