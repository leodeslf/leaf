# Matemáticas II

Guía de la materia.  
**🚨 Todo el material está sensiblemente resumido. 🚨**

## 📢 Contenido

- **[Programación Lineal][1]**
- **[Polinomios][2]**
  - [Gráfica][2a]
  - [Multiplicacián y División][2b]
  - [Ruffini][2c]
  - [Ley del Resto][2d]
  - [Teorema de Descartes][2e]
  - [Regla de los signos de Descartes][2l]
  - [Expresión analítica desde la gráfica][2f]
  - [Raíces evidentes][2g]
  - [Teorema de la Raíz Racional][2h]
  - [Descomposición Factorial][2i]
  - [Raíces comunes a dos polinomios][2j]
  - [Raíces independientes del parámetro][2k]
- **[Ecuaciones e Inecuaciones Racionales][3]**
- **[Función Racional Homográfica][4]**
- **[Ecuaciones e Inecuaciones Exponenciales y Logarítmicas][5]**
- **[Ecuaciones Trigonométricas][6]**
- **[Complemento][7]**

---

## Programación Lineal 📌

Permite optimizar funciones con determinadas restricciones.

**Función objetivo** (Función lineal). Para *maximizar beneficios* o *minimizar costos*.  
**Restricciones** (inecuaciones lineales). Lo *disponible* y lo *necesario*.

- **Proceso:**
  - *Identificar:*
    - **Incognitas**.
    - **Función objetivo**.
    - **Restricciones**.
  - *Calcular:*
    - **Restricciones** graficamente.
    - **Coordenadas** de los vertices.
    - **Función objetivo** para cada solución factible.

La **solución** sera la (o las) que  se adapten a las necesidades (maximizar o minimizar).

---

## Polinomios 📌

Función polinómica (o bien, *polinomio*). Es la función de una expresión algebraica de varios monomios.

---

### Gráfica 📍

- **Ramas:**
  - La rama **derecha** se dirige **hacia el signo** del coef. de grado máximo.
  - La rama **izquierda** se dirige **hacia abajo** cuando polinomio es de grado **par** y el coef. de grado máximo es **negativo** o bien polinomio es de grado **impar** y el coef. de grado máximo es **positivo**. De lo contrario se dirige **hacia arriba**.
- **Centro:**
  - El **máximo de pliegues** es grado del polinomio **menos 1**.
- **Tipo:**
  - Una función es **creciente** cuando a medida que aumenta la `x`, el valor de la función tambien **aumenta**.
  - Una función es **decreciente** cuando a medida que aumenta la `x`, el valor de la función **disminuye**.
- **Intersección con los ejes:**
  - **Ordenada:** Corte con el eje `Y`, sucede **sólo una vez**.
  - **Raíz:** Cortes en eje `x`, la cantidad de raíces `r` es, como **máximo**, igual al grado de `P(x)`.  
    Si un polinomio tiene raíz, se puede **descomponer** como **producto de polinomios**.  
    Si el factor `x - a` aparece **una vez** en la forma factorizada de `P(x)`, entonces `a` es **raíz simple**.  
    Si aparece **dos veces**, `a` es una **raíz doble**.  
    Si aparece **tres veces**, entonces, `a` es una **raíz triple**.

---

### Multiplicación y División 📍

#### Multiplicación

El producto es un polinomio cuyo grado es la **suma de los grados de sus factores**.

- *Proceso:*
  - Se multiplica todos los términos de un polinomio por los del otro.
  - Luego, se reducen los términos semejantes.
- *A tener en cuenta:*
  - **Producto continuado de polinomios:** En caso de multiplicarse más de 2 polinomios, se procede multiplicando dos de ellos (cualesquiera), a este producto, multiplicarlo por el siguiente factor (polinomio) y así sucesivamente.
  - **Ley de los coeficientes:** El coeficiente del producto de dos factores, es el producto de los coeficientes de los factores.
  - **[Ley Conmutativa](#Ley-Conmutativa)**.
  - **[Ley Distributiva](#Ley-Distributiva)**.
  - **[Ley de exponentes](#Ley-de-exponentes)**.
  - **[Ley de signos](#Ley-de-signos)**.

#### División

El cociente es un polinomio cuyo grado es el **grado del dividendo menos el grado del divisor**.

- *Proceso:*
  - A cada término del dividendo se lo debe **ordenar** de mayor a menor y **completar** con ceros los faltantes.
  - Se divide el primer término del dividento entre el primero del divisor, obteniendo así, el **primer término del cociente**, se lo coloca debajo del divisor.
  - A este **primer término**, se lo multiplica por cada término del divisor, los **productos** se colocan debajo del **dividendo** (c/u bajo su semejante), _**invirtiendo su signo**_.
  - Se resta los términos semejantes del **dividendo a este producto** (del *cociente entre divisor*).  
  **Nota:** En dicha resta se **anulan**, naturalmente, los términos de mayor grado.
  - Nuevamente al **primer término** de la resta se lo divide entre el primero del divisor, obteniendo el **segundo término del cociente**, y así sucesivamente.  
  **Nota:** Se repite el proceso hasta que el resto sea **cero** o sólo quede un **término independiente**.  
  Cuando resta cero, el resultado es: `cociente`.  
  De lo contrario, el resultado sera: `cociente + (resto / divisor)`.
- *A tener en cuenta:*
  - **[Ley de exponentes](#Ley-de-exponentes)**.
  - **[Ley de signos](#Ley-de-signos)**.
  - **[Polinomio Divisible](#Polinomio-Divisible)**
  - **[Raíz](#Raíz)**

---

### Ruffini 📍

Un método breve para la **división de polinomios** (cuando el divisor es un binomio de la forma `x - a`).

- **Proceso:**
  - Si el polinomio es **incompleto**: se lo completa con **ceros**.
  - Escribir los ceoficientes del dividendo (**incluyendo los ceros**).
  - Abajo y a la izquierda: colocar el **opuesto** del término independiente del divisor.
  - Abajo trazar una *raya* y bajo la misma: escribir el **primer coeficiente** (en su misma columna).
  - Multiplicar ese **coeficiente por el divisor** y escribir el resultado: **sobre la raya** y debajo del **siguiente coeficiente**.
  - Sumar este último **coeficiente y resultado**, colocar el **total** debajo de raya.
  - Repetir el proceso con ese **total** (ahora **coeficiente**).

El último número obtenido es el **resto**.  
El **cociente** conforma un **nuevo polinomio** un grado menor al inicial.

---

### Ley del Resto 📍

El **resto** de `P(x)` dividido `x - a` es igual a `P(a)`.

---

### Teorema de Descartes 📍

Plantea que la condicion **necesaria y suficiente** para que un polinomio `P(x)` sea **divisible** entre `x - a` es que `a` sea **raíz** de `P(x)`.

**Demostracion**:  
`P(x)` es divisible entre `x - a` si y sólo si *(a)* el resto de `P(x)` dividido `x - a` es `0`, si y sólo si *(b)* `P(a) = 0`, si y sólo si *(c)* `a` es raíz de `P(x)`.

*a:* Por definicion de [Polinomio divisible](#Polinomio-Divisible).  
*b:* Por [Ley del Resto][2b].  
*c:* Por definicion de [Raíz](#Raíz).

---

### Regla de los signos de Descartes 📍

El número de raíces positivas de `P(x)` es igual al número de **cambios de signo** de término a término dicho polinomio.

---

### Expresión analitica desde la grafica 📍

Para `P(x)` de tercer grado.

- **Proceso:**
  - Identificar **raíces**, `r1, r2, r3`.
  - Identificar **otros datos** como `x, y` para determinado `P(x) = y`, incluyendo `P(0)`.
  - Obtener **polinomio factorizado** `P(x) = a(x - r1)(x - r2)(x - r3)`.
  - Obtener **producto** `P(x) = ax³ + bx² + cx + d`.

---

### Raíces evidentes 📍

Dado `P(x)`, se puede deducir:

Raíz | Condicion
:---: | :---
`-1` | `(coef. pares) = (coef. impares)`
`0` | `(término independiente) no ∃`
`1` | `(suma de coef.) = 0`

---

### Teorema de la Raíz Racional 📍

Sea `P(x) = ax³ + bx² + cx + d` de grado `n ≥ 1` y `d ≠ 0 ∧ d ∈ ℤ`.  
Sea `p` divisor del **término independiente**.  
Sea `q` divisor del **coeficiente principal**.

Las **posibles** raíces de `P(x)` son todas las fracciones `p/q` **irreducibles** (incluyendo **enteros**).

---

### Descomposicion Factorial 📍

Se entiende por la descomposicion en forma de [polinomios irreducibles](#Polinomio-Irreducible).  
Del polinomio `P(x)`, obtener `Q(x)` factorizado, siendo `P(x) = Q(x)`.

- **Proceso:**
  - *Para grado 3 o superior:* Aplicar [ruffini][2a] con alguna [raíz evidente][2e].
  - *Para grado 2:* Aplicar [báscara](#Báscara).

*E.g.:*  
Partiendo de `P(x) = ax³ + bx² + cx + d`, se obtiene `Q(x) = a(x - r1)(x - r2)(x - r3)`.  
Siendo `r1, r2, r3` raíces de `P(x)`.

---

### Raíces comunes a dos polinomios 📍

Dado `P(x)` y `Q(x)` de **mismo grado**.  
Sea `r` **raíz de ambos**, por lo tanto `P(r) = Q(r) = 0`.  
Sea `H(x) = a.P(x) + b.Q(x)` *(Combinacion Lineal)*.

- **Proceso:**
  - Elegir `a` y `b` de manera que el **coeficiente principal** de `P(x)` y `Q(x)` se **anulen** al sumarlos, resultando `H(x)`, un **grado menor** que `P(x)` y `Q(x)`.  
  - Hallar raíces de `H(x)`, siendo estas, **posibles raíces comunes** de `P(x)` y `Q(x)`.  
  - **Comprobar** dichas raíces sobre `P(x)` y `Q(x)` con [ruffini][2a] o bien [báscara](#Báscara), para, finalemente, identificar `r` como **raíz común**.

**Demostracion:**  
Sea `H(r) = a.P(r) + b.Q(r) = 0`, se sabe `P(r) = Q(r) = 0`, entonces, ambos productos y su suma se **reducen a cero**, por lo tanto, `H(r) = 0`.

---

### Raíces independientes del parametro 📍

Para (e.g) `Pm(x) = (m²-3)x³ - (m+1)x² - (m²-2m-1)x - m + 3` (agragado el parametro `m` al polinomio de tercer grado). Se debe hallar una **raíz común** a **todos los posibles polinomios** `Pm(x)` variando, evidentemente, `m`.

- **Proceso:**
  - Aplicar **distributiva** a la expresión.  
  Obteniendo: `Pm(x) = m²x³-3x³-mx²-x²-m²x+2mx+x-m+3`
  - **Reordenarla** en función a las **potencias** de base `m`.  
  Obteniendo: `Pm(x) = m²(x³-x) + m(-x²+2x-1) + (-3x³-x²+x+3)`.
  - Entre paréntesis, teniendo como factor común *`m², m` e independiente de `m`*, se obtienen, **tres polinomios** en `x`, en este caso: `A(x) = x³-x`, `B(x) = -x²+2x-1`, `C(x) = -3x³-x²+x+3`.
  - Hallar `r`, tal que `Pm(r) = 0`, por lo tanto `A(r) = B(r) = C(r) = 0`, `r` sera **raíz común a cualquier variante** de `Pm(r)`, *porque* `Pm(r) = m².A(r) + m.B(r) + C(r)`, reduciendo toda la expresión a **cero**.
  - Luego, hallar raíces de `A(x)`, `B(x)`y `C(x)`, y evaluar las *posibles raíces comunes* para identificar la **raíz independiente del parametro**.

---

## Ecuaciones e Inecuaciones Racionales 📌

Tanto las *ecuaciones* como las *inecuaciones* racionales, son aquellas donde aparecen **fracciones algebraicas**, estando la incógnita tanto en el numerador como denominador.

### Ecuación Racional 📍

Presentan **igualdades**. La incógnita es un **valor**.  

- **Proceso** para fraccion algebraica en **un miembro**:
  - **Quitar** la incógnita del **denominador** (para poder despejarla), pasar el **denominador multiplicando** al miembro contrario.  
  Se pasa de `a/b = c` a tener `a = c.b`.
  - **Resolver** la ecuación dejando la incógnita en **un sólo miembro** para **despejarla**.
- **Proceso** para fraccion algebraica en **ambos miembros**:
  - **Quitar** de ambos miembros el **denominador**, **multiplicando en cruz**.  
  Se pasa de `a/b = c/d` a tener `a.d = c.b`.
  - Aplicar **distributiva** en ambos miembros. En este paso, el grado de las expresiones **aumenta en uno**.
  - Pasar expresiones a un **mismo miembro** e iguala a **cero**.  
  Obteniendo: `ad + cb = 0`.
  - **Agrupar** por **términos semejantes**. Aquí, los términos de mayor grado se **anulan**.
  - **Resolver** la expresión final para **despejar la incógnita**.

### Inecuación Racional 📍

Presentan **desigualdades** (<, >, ≤, ≥). La incógnita puede ser un **conjunto de valores**.

- **Proceso** para fraccion algebraica en **un miembro**:
  - **Desigualar** ecuación a **cero**.
  - Realizar **estudio de signo**. Obteniendo los puntos donde la función **cambia de signo**.  
  Para ello, se **iguala a cero y despeja**, tanto el numerador como el denominador.  
  E.g: Para `a/b < c`, **resolver** `a = 0` y `b = 0`, y **despejar** `x` en ambos casos.
  - **Representar** los **valores** despejados de `x` en la **Recta Real**.
  - **Indicar** en la misma, si dichos valores **están inlcuidos** (o no) en el conjunto solución, teniendo en cuenta la *desigualdad*.  
  **Nota:** El **valor** obtenido de igualar el **denominador** a cero, **no pertenece** al conjunto solución, ya que un denominador **nunca puede ser cero**.
  - Obtener el **signo** de cada intervalo, dandole a `x` un valor que **pertenezca** cada uno, **sustituir y operar**. El **signo** de cada **resultado**, sera el **signo** del **intervalo** que le corresponda.
  - **Representar** el **signo** de cada tramo en la **Recta Real**.
  - Finalmente, la solución es el intervalo (o intervalos) que cumplen con la desigualdad.

**Nota:**  
Cuando un intervalo **incluye** determinado límite `a`, se dice intervalo **cerrado** en `a`, de no ser así, se dice intervalo **abierto** en `a`.

---

## Función Racional Homografica 📌

La forma general es:

![frh]

Siendo `c ≠ 0` y `ad ≠ bc`.

El valor de `-(d/c)` **no pertenece** al dominio de `f(x)`, por ser un denominador **igual a cero** (lo cual no puede suceder).

Con `x = -(d/c)` se obtiene la **asíntota vertical**.  
La **asíntota horizontal** se obtiene de cuando `y = a/c`

Para hallar las **raíces**, se **iguala a cero** la función, para que esta sea cero, debería serlo el **numerador**, por ende, se **resuelve** `ax + b = 0`.  
La **ordenada**, evidentemente, se calcula con `f(0)`, lo cual es igual a `b/d`.

---

## Ecuaciones e Inecuaciones Exponenciales y Logaritmicas 📌

### Ecuación Exponencial 📍

Es toda ecuación donde la **incógnita** aparece en el **exponente** de una potencia.  
Se puede resolver de **dos maneras**, reduciendo a **base común** o **aplicando logaritmos**.

- **Proceso:**
  - *Base común:*
    - **Convertir** términos a potencias de **misma base**, en ambos miembros.
    - Igualar a **cero**.
    - **Reducir** aplicando propiedades.
  - *Logaritmos:*
    - *De ser necesario*, se **convierte** a potencia cada término (de un miembro).
    - **Aplicar** logaritmos a ambos lados.
    - **Aplicar** propiedades de logaritmos para reducir la expresión.
    - Igualar a **cero**.
    - **Operar** hasta despejar `x`.
- *A tener en cuenta:*
  - Sea *`a`* base de la potencia, tal que:  
  ![a](https://latex.codecogs.com/gif.latex?a%3E0)  
  ![b](https://latex.codecogs.com/gif.latex?a%5Cneq1)  
  ![c](https://latex.codecogs.com/gif.latex?a%5E%7Bx_%7B1%7D%7D%3Da%5E%7Bx_%7B2%7D%7D%5CRightarrow%20x_%7B1%7D%3Dx_%7B2%7D)
  - Propiedades de [Potencias](#Potencias-).
  - Propiedades de [Logaritmos](#Logaritmos-).

### Ecuación Logarítmica 📍

Es una ecuación donde la **incógnita** aparece en el **argumento** de una logaritmo.

- **Proceso:**
  - Igualar a **cero**.
  - *Similar a Ec. Exp.*, se busca **reducir** los miembros aplicando propiedades.
  - **Operar** hasta despejar la incógnita, `x`.
  - **Verificar** solución, **no** debe ser logaritmo de un número `a`, tal que `a > 0` y `a ≠ 1`.
- *A tener en cuenta:*
  - Propiedades de [Potencias](#Potencias-).
  - Propiedades de [Logaritmos](#Logaritmos-).

### Inecuación Exponencial 📍

Es una **desigualdad**, donde la **incógnita** aparece en el **exponente** de una potencia.

- **Proceso:**
  - **Sustituir** toda expresión numerica por potencias.
  - Igualar a **cero**.
  - Aplicar propiedades para **reducir** la expresión.
  - Obtener miembros de **misma base** para aplicar **monotonía de la potenciación**.
  - Hallar raíces de la expresión para determinar un **conjunto solución factible**.
- *A tener en cuenta:*
  - Propiedades de [Potencias](#Potencias-).
  - Propiedades de [Logaritmos](#Logaritmos-).

### Inecuación Logarítmica 📍

Es una **desigualdad**, donde la **incógnita** aparece en el **argumento** de una logaritmo.

- **Proceso:**
  - **Sustituir** toda expresión numerica por logaritmos.
  - Igualar a **cero**.
  - Aplicar propiedades para **reducir** la expresión.
  - Obtener miembros de **misma base** para aplicar **monotonía de logaritmo**.
  - Hallar raíces de la expresión para determinar un **conjunto solución factible** (cuidando que la raíz **no** sea parte del mismo, ya que el argumento del logaritmo no puede ser cero).
- *A tener en cuenta:*
  - Propiedades de [Potencias](#Potencias-).
  - Propiedades de [Logaritmos](#Logaritmos-).

---

## Ecuaciones Trigonométricas 📌

S/h.

---

## Complemento 📌

Info. extra sobre leyes, propiedades y formulas *(acotadas según las necesidades)*.

### Báscara 📍

![báscara]

### Ley Conmutativa 📍

El **órden** de los **factores** no altera el **producto**.

### Ley Distributiva 📍

Se multiplica **todos** los términos del multiplicando por los del multiplicador, **separando** los productos parciales por su **propio signo**.

### Ley de exponentes 📍

Sobre potencias de **misma base**:  
Al **multiplicar** se **suma** los exponentes de los factores, al **dividir**, los mismos se **restan**.  
Ver más sobre potencias [aquí](#Potencias-).

### Ley de signos 📍

Al multiplicar o dividir términos con **signos iguales** el resultado es **positivo**, **signos opuestos** resulta en **negativo**.

### Polinomio Divisible 📍

Un polinomio `P(x)` es divisible entre `Q(x)` cuando existe `C(x)`, tal que `P(x) = C(x) + Q(x)` (por lo tanto, el resto es **cero**).

### Polinomio Irreducible 📍

Un polinomio `P(x)` se dice **irreducible** (o primo) cuando **no puede descomponerse** en factores.

### Potencias 📍

*Propiedades y casos especiales*.

ID | Definición
:--- | :---:
Exp. `0` | ![ex1]
Exp. `1` | ![ex2]
Exp. `< 0` | ![ex3]
Exp. frac. | ![ex4]
Inverso frac. | ![ex5]
Prod. bases = | ![ex6]
Coci. bases = | ![ex7]
Pot. de pot. | ![ex8]
Prod. bases ≠ | ![ex9]
Coci. bases ≠ | ![ex10]

### Logaritmos 📍

*Propiedades y casos especiales*.

ID | Definición
:--- | :---:
Log de `1` | ![log1]
Arg. = base | ![log2]
idem., y exp. `n` | ![log3]
Log de prod. | ![log4]
Log de coci. | ![log5]
Log de pot. | ![log6]
Cambio de base | ![log7]
Log de raíz | ![log8]

**Definición de logaritmo:**

![9](https://latex.codecogs.com/gif.latex?x%20%3D%20%5Clog_%7Ba%7Db%5CRightarrow%20a%5Ex%3Db)

**Condiciones de existencia:**

![10](https://latex.codecogs.com/gif.latex?%5Cleft%5C%7B%5Cbegin%7Bmatrix%7D%20a%3E0%5C%5C%20a%5Cneq1%5C%5C%20b%3E0%20%5Cend%7Bmatrix%7D%5Cright.)

**Monotonía de logaritmo:**

![z](https://latex.codecogs.com/gif.latex?b%3Cc%5Cleft%5C%7B%5Cbegin%7Bmatrix%7D%20a%3E1%5CRightarrow%5Clog_%7Ba%7Db%3E%5Clog_%7Ba%7Dc%5C%5C%200%3Ca%3C1%5CRightarrow%5Clog_%7Ba%7Db%3C%5Clog_%7Ba%7Dc%20%5Cend%7Bmatrix%7D%5Cright.)

**Inyectividad de logaritmo:**

![8](https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7Dx%3D%5Clog_%7Ba%7Dy%5CRightarrow%20x%3Dy)

### Raíz 📍

Un valor `a` es **raíz** de `P(x)` si y sólo si `P(a) = 0`.

---

Volver [🔼](#Matem-ticas-II)

[1]:#Programaci-n-Lineal-
[2]:#Polinomios-
[2a]:#Gr-fica-
[2b]:#Multiplicaci-n-y-divisi-n-
[2c]:#Ruffini-
[2d]:#Ley-del-Resto-
[2e]:#Teorema-de-Descartes-
[2f]:#Expresi-n-analitica-desde-la-grafica-
[2g]:#Ra-ces-evidentes-
[2h]:#Teorema-de-la-Ra-z-Racional-
[2i]:#Descomposición-Factorial-
[2j]:#Ra-ces-comunes-a-dos-polinomios-
[2k]:#Ra-ces-independientes-del-parametro-
[2l]:#Regla-de-los-signos-de-Descartes-
[3]:#Ecuaciones-e-Inecuaciones-Racionales-
[4]:#Funci-n-Racional-Homografica-
[5]:#Ecuaciones-e-Inecuaciones-Exponenciales-y-Logaritmicas-
[6]:#Ecuaciones-Trigonom-tricas-
[7]:#Complemento-

[ex1]:https://latex.codecogs.com/gif.latex?a^{0}=1
[ex2]:https://latex.codecogs.com/gif.latex?a^{1}=a
[ex3]:https://latex.codecogs.com/gif.latex?a^{-n}=\frac{1}{a^{n}}
[ex4]:https://latex.codecogs.com/gif.latex?a^{\frac{m}{n}}=\sqrt[n]{a^m}
[ex5]:https://latex.codecogs.com/gif.latex?%5Cleft%20%28%20%5Cfrac%7Ba%7D%7Bb%7D%20%5Cright%20%29%5E%7B-1%7D%3D%5Cfrac%7Bb%7D%7Ba%7D
[ex6]:https://latex.codecogs.com/gif.latex?a^m\cdot&space;a^n&space;=&space;a^{m&plus;n}
[ex7]:https://latex.codecogs.com/gif.latex?a^m:a^n=a^{m-n}
[ex8]:https://latex.codecogs.com/gif.latex?(a^m)^n=a^{m&space;\cdot&space;n}
[ex9]:https://latex.codecogs.com/gif.latex?a^n\cdot&space;b^n=(a\cdot&space;b)^n
[ex10]:https://latex.codecogs.com/gif.latex?a^n:b^n=(a:b)^n

[log1]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7D1%3D0
[log2]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7Da%3D1
[log3]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7Da%5En%3Dn
[log4]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7D%28x%5Ccdot%20y%29%3D%5Clog_%7Ba%7Dx&plus;%5Clog_%7Ba%7Dy
[log5]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7D%28x%3Ay%29%3D%5Clog_%7Ba%7Dx-%5Clog_%7Ba%7Dy
[log6]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7D%28x%5En%29%3Dn%5Ccdot%20%5Clog_%7Ba%7Dx
[log7]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7D%28b%29%3D%5Cfrac%7B%5Clog_%7Bc%7D%28b%29%7D%7B%5Clog_%7Bc%7D%28a%29%7D
[log8]:https://latex.codecogs.com/gif.latex?%5Clog_%7Ba%7D%28%5Csqrt%5Bn%5D%7Bx%7D%29%3D%5Cfrac%7B1%7D%7Bn%7D%5Ccdot%5Clog_%7Ba%7Dx

[neq]:https://latex.codecogs.com/gif.latex?\inline&space;\neq
[báscara]:https://latex.codecogs.com/gif.latex?\large&space;x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}
[frh]:https://latex.codecogs.com/gif.latex?f(x)=\frac{ax&plus;b}{cx&plus;d}
[cmrsd]:https://latex.codecogs.com/gif.latex?\inline&space;cociente&plus;\frac{resto}{divisor}

[extra]:≠²³⇔
