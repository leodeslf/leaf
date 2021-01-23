# Init Frameworks & Libraries

How to initialize and basic configuration.

## Table of contents

* [Angular](init_frameworks_and_libraries.md#Angular)
* [Vue](init_frameworks_and_libraries.md#Vue)
* [React](init_frameworks_and_libraries.md#React)

## Angular

```bash
npm i -g @angular/cli
ng new [project-name]

...

ng generate component [component-name]
ng add [dependency-name]

...

npm start
npm run build

```

```json
{
  "scripts": {
    "start": "ng serve --open",
    "build": "ng build --prod"
  }
}
```

## Vue

```bash
npm i -g @vue/cli
vue create [project-name]

...

npm run serve
npm run build
```

```json
{
  "scripts": {
    "serve": "vue-cli-service serve --open",
    "build": "vue-cli-service build"
  }
}
```

## React

```bash
npx create-react-app [project-name]

...

npm start
npm run build
```

```json
{
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build"
  }
}
```
