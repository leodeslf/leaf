# Cypress

```bash
# Install
npm i -D cypress
```

```bash
# Use
./node_modules/.bin/cypress run [options]
```

```bash
# Use with shorcut
$(npm bin)/cypress run [options]
```

```bash
# Use with npx
npx cypress run [options]
```

```bash
# Use with `npm run` as a script
npm run cy:run -- [options]
```

```json
// package.json
{
  "scripts": {
    "cy:run": "cypress run",   // Runs all tests
    "cy:open": "cypress open", // Opens the test runner
    "cy:info": "cypress info"  // Shows info about the environment
  }
}
```

Options:

- `-b`, `--browser [chrome|chrome:canary|chromium|edge|electron|firefox]`
- `-c`, `--config [config]`
- `-C`, `--config-file <config-file|false>` (cypress.json by default)
- `-e`, `--env <env-var>`
- `--headed` (force the browser to be shown)
- `-p`, `--port <number>`
- `-q`, `--quiet`

More at:

- [Command Line](https://docs.cypress.io/guides/guides/command-line).
- [Configuration](https://docs.cypress.io/guides/references/configuration).
