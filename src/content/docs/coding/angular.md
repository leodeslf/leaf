# Angular

## Installation

```bash
npm i -g @angular/cli
```

## Usage

```bash
ng <command> [option]
```

```bash
ng new <project-name> [option]
ng add <dependency-name> [option]
ng generate <sub-command> [option]
ng serve [option]
ng build [option]
```

```bash
# Use with npm scripts
npm start
npm run build
```

```json
// package.json e.g.:
{
  "scripts": [
    "start": "ng serve --port <port-number> --open --configuration development",
    "build": "ng build --configuration production"
  ]
}
```

Commands (angular.io):

- [`n`, `new <project-name> [option]`](https://angular.io/cli/new), options:
  - `--defaults` (skips input prompts)
  - `--force` (overrides if needed)
  - `--minimal` (no testing frameworks)
  - `--routing`
  - `--strict`
  - `--style <css|scss|sass|less>`
- [`add <dependency-name>`](https://angular.io/cli/add)
- [`g`, `generate <sub-command>`](https://angular.io/cli/generate), sub-commands:
  - `class`
  - `component`
  - `config`
  - `directive`
  - `enum`
  - `interface`
  - `module`
- [`s`, `serve`](https://angular.io/cli/serve), options:
  - `--browser-target`
  - `-c`, `--configuration <production|development>`
  - `--hmr` (hot module replacement)
  - `--host`
  - `--open`
  - `--port`
- [`b`, `build`](https://angular.io/cli/build), options:
  - `-c`, `--configuration <production|development>`
  - `--optimizations <scripts|styles|fonts> [sub-options]`, sub-options:
    - `styles` sub-options:
      - `minify`
      - `inlineCritical`
    - `fonts` sub-option:
      - `inline`
  - `--watch`
- [`config <config-file>`](https://angular.io/cli/config)

More at:

- [CLI command-language syntax (angular.io)](https://angular.io/cli#cli-command-language-syntax).
- [Command Overview (angular.io)](https://angular.io/cli#command-overview).
- [Angular workspace configuration (angular.io)](https://angular.io/guide/workspace-config).
