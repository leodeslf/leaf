# Init frameworks/libraries

How to init and basic config.

Content:

* [Angular](how_to_init.md#Angular)
* [Vue](how_to_init.md#Vue)
* [React](how_to_init.md#React)

## Angular

```bash
npm i -g @angular/cli
ng new [project-name]
...
npm start
npm run build
...
ng generate component [component-name]
ng add [dependency-name]

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
npx create-react-app PROJECT-NAME
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
