# Create React App

## Initialization

```bash
# No installation required
npx create-react-app <project-name>
```

## Installation

```bash
npm init react-app <project-name>
```

More at [Creating an App (create-react-app.dev)](https://create-react-app.dev/docs/getting-started#creating-an-app).

## Usage

```bash
react-scripts <command>
```

```bash
react-scripts start
react-scripts test
react-scripts build
```

```bash
# Use with npm scripts
npm start
npm test
npm run build
```

```json
// package.json e.g.:
{
  "scripts": {
    "start": "set PORT=<port-number> && react-scripts start",
    "test": "react-scripts test",
    "build": "react-scripts build"
  }
}
```

More at [Available Script](https://create-react-app.dev/docs/available-scripts).
