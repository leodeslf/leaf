---
layout: default
---
## Cypress

```bash
# Install
npm i -D cypress
```

```bash
# Use
./node_modules/.bin/cypress run [option]
```

```bash
# Use with shortcut
$(npm bin)/cypress run [option]
```

```bash
# Use with npx
npx cypress run [option]
npx cypress open [option]
npx cypress info [option]
```

```bash
# Use with npm scripts
npm run cy:run -- [option]
```

Options:

- `-b`, `--browser [chrome|chrome:canary|chromium|edge|electron|firefox]`
- `-c`, `--config [config]`
- `-C`, `--config-file <config-file|false>` (cypress.json by default)
- `-e`, `--env <env-var>`
- `--headed` (force the browser to be shown)
- `-p`, `--port <number>`
- `-q`, `--quiet`

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

----

Reference:

- [Command Line (docs.cypress.io)](https://docs.cypress.io/guides/guides/command-line).
- [Configuration (docs.cypress.io)](https://docs.cypress.io/guides/references/configuration).
