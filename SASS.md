# SASS

## Contenido

- [Cross Browsing](#Cross-Browsing)
- [Variables](#Variables)
- [!global](#!global)
- [Mixin/Include](#Mixin/Include)
- [Nesting](#Nesting)
- [Extend](#Extend)
- [Operators](#Operators)
- [Import](#Import)
- [Partials](#Partials)

## Cross Browsing

Automaticamente crea estilos necesarios para cada navegador.

## Variables

Diferente a las variables de CSS3.

E.g:

```SCSS
$var0: green;
$var1: 14px;

body {
    background-color: $var0;
    font-size: $var1;
    ...
}
```

### !global

Cuando un selector sobreescribe el valor de una variable, solo se aplica a sus hijos (sobreescrito) si se incluye `!global`.

E.g:

```SCSS
$var0: red;

a {
    color: $var0;
    ...
}

/* para todos los 'a' dentro de 'nav', su color
ser'a azul, no rojo */
nav {
    $var0: blue !global;
    color: $var0;
    ...
}
```

## Mixin/Include

Crear un set/grupo de estilos.

E.g:

```SCSS
@mixin nombre0 {
    property: value;
    property: value;
    ...
}
```

Tambi'en se pueden incluir parametros (con o sin valores por defecto).

E.g:

```SCSS
@mixin nombre1($param0, $param1: 4px) {
    property: $param0 $param1;
}

select {
    @include: nombre0;
    /* ambos personalizados */
    @include: nombre1(green, 1px);
    ...
}

select {
    /* solo declarando un valor espec'ifico */
    @include: nombre1(@param0: red);
    ...
}
```

## Nesting

Anidado entre *selectores*.

E.g:

```SCSS
element {
    property: value;
    ...
    element {
        property: value;
        ...
    }
}
```

Anidar entre *propiedades* (con un mismo prefijo).

E.g:

```SCSS
font: {
    family: value;
    size: value;
    weight: value;
    ...
}

margin: {
    top: value;
    bottom: value;
    ...
}
```

## Extend

"Exportar" propiedades de un selector a otro.

E.g:

```SCSS
selector0 {
    property: value;
    property: value;
    ...
}

selector1 {
    @extend selector0;
    property: value;
    ...
}
```

## Operators

## Import

Modularizar estilos mediante la separaci'on de archivos.

E.g:

`reset.scss`

```SCSS
* {
    padding: 0;
    margin: 0;
    ...
}
```

`estilo0.scss`

```SCSS
@import "reset";

...
```

### Partials

En lugar de importar el archivo completo, se utiliza parte de 'el.
Un archivo Partial comienza con underscore.

E.g:

`_filename.scss`

```SCSS
$prop0: value;
$prop1: value;
...
```

Al importar, se ignora el underscore.

`estilo.scss`

```SCSS
@import "filename";

select {
    property: $prop0;
    ...
}
```
