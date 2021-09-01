# Web Dev Server

```bash
npm i --save-dev @web/dev-server
```

```bash
npx wds --help
```

```bash
web-dev-server [options]
# or
wds [options]
```

Options:

- `-c, --config` (for a **web-dev-server.config** file)
- `-r, --root-dir`
- `-o, --open`
- `--node-resolve`
- `-w, --watch`
- `-p, --port`
- `-h, --hostname`

---

```json
// package.json
{
  "scripts": {
    "start": "wds -p <number> --node-resolve -w -o"
  }
}
```

---

More at [CLI flags](https://modern-web.dev/docs/dev-server/cli-and-configuration/#cli-flags).
