# Geometría II

Guía de la materia.  
**🚨 Todo el material está sensiblemente resumido. 🚨**

## 📢 Contenido

- **[Definiciones](#Definiciones-)**
  - [Sistemas Axiomáticos](#Sistemas-Axiomáticos-)
  - [Congruencias en el plano](#Congruencias-en-el-plano-)
  - [Homotecia](#Homotecia-)
  - [Semejanza](#Semejanza-)
- **[Isometrías](#Isometrías-)**
  - [Simetría](#Simetría-)
    - *[Simetría Axial](#Simetría-Axial)*
    - *[Simetría Central](#Simetría-Central)*
  - [Rotación](#Rotación-)
  - [Traslación](#Traslación-)
  - [Antitraslación](#Antitraslación-)
- **[Lugares Geométricos](#Lugares-Geométricos-)**
  - [Elemental](#Elemental-)
    - *[Mediatriz](#Mediatriz)*
    - *[Bisectriz](#Bisectriz)*
    - *[Arco Capaz](#Arco-Capaz)*
    - *[Plano mediator](#Plano-mediator)*
    - *[Plano bisector](#Plano-bisector)*
    - *[Esfera](#Esfera)*
    - *[Casquete esférico](#casquete-esférico)*
  - [Sin isometría](#Sin-isometría-)
  - [Con isometría](#Con-isometría-)
- **[Complemento](#Complemento-)**
  - [Lugar geométrico de Thales](#Lugar-geométrico-de-Thales-)
  - [Teorema de Thales](#Teorema-de-Thales-)
  - [Ángulos](#Ángulos-)
  - [Triángulos](#Triángulos-)
  - [Cuadriláteros](#Cuadriláteros-)

---

## Definiciones 📌

### Sistemas Axiomáticos 📍

Son una forma de organizar el conocimiento, consta de **ideas fundamentales**, llamadas **axiomas**, y otras **derivadas** mediante deducción (razonamiento lógico), llamadas **teoremas**.

### Congruencias en el plano 📍

Si dos figuras geométricas tienen las mismas **dimensiones** y la misa **forma**, se dicen congruentes *(indiferente de su orientación y posición)*.

### Homotecia 📍

Es una **transformación** geométrica a partir de un **punto** fijo (llamado centro) que **multiplica** las distancias por una razón.  
Se puede visualizar como una **traslación** y una **escala** (juntas).

### Semejanza 📍

Dos figuras son semejantes cuando tienen la **misma forma** *(sin importar su tamaño)*.

---

## Isometrías 📌

**Alteran orientación o posición** de una figura.  
Las figuras inicial y final son **congruentes y semejantes** *(mantienen forma y tamaño)*.

**Ecuación con isometrías:**  
La composición de isometrías **no** es conmutativa.
En cualquier caso, la aplicación de una isometría con su inversa, da la como resultado la identidad.

**Isometrías y sus inversas:**  

Isometría | ![f](https://latex.codecogs.com/gif.latex?%5Ctextbf%7B%5Ctextit%7Bf%7D%7D) | ![f-1](https://latex.codecogs.com/gif.latex?%5Ctextbf%7B%5Ctextit%7Bf%7D%7D%5E%7B-1%7D)
:---: | :---: | :---:
Simetría Axial | ![s](https://latex.codecogs.com/gif.latex?S_%7Be%7D) | ![-s](https://latex.codecogs.com/gif.latex?S_%7Be%7D)
Simetría Central | ![c](https://latex.codecogs.com/gif.latex?C_%7Bo%7D) | ![-c](https://latex.codecogs.com/gif.latex?C_%7Bo%7D)
Rotación | ![r](https://latex.codecogs.com/gif.latex?R_%7Bo%2C&plus;a%7D) | ![-r](https://latex.codecogs.com/gif.latex?R_%7Bo%2C-a%7D)
Traslación | ![t](https://latex.codecogs.com/gif.latex?T_%7B%5Cvec%7Bu%7D%7D) | ![-t](https://latex.codecogs.com/gif.latex?T_%7B-%5Cvec%7Bu%7D%7D)
Antitraslación | ![at](https://latex.codecogs.com/gif.latex?AT_%7Be%2C%5Cvec%7Bu%7D%7D) | ![-at](https://latex.codecogs.com/gif.latex?AT_%7Be%2C-%5Cvec%7Bu%7D%7D)

**Isometría involutiva:**  
Una isometría es **involutiva** si al aplicarla **dos veces** se obtiene la **identidad**.

**Isometría directa:**  
Una isometría es **directa** cuando el conjuntos de puntos de la imágen y la preimágen **mantienen el mismo sentido** *(horario o antihorario)*.

**Isometría indirecta:**  
Una isometría es **indirecta** cuando el conjunto de puntos de la imágen **invierte su sentido** con respecto a los puntos de la preimágen *(de horario a antihorario, o viceversa)*.

### Simetría 📍

Correspondencia de **posición, forma y tamaño**, respecto a un **punto, linea o plano**.

#### Simetría Axial

Se da cuando los puntos *correspondientes* de dos figuras **equidistan** del **eje de simetría**.  
Los puntos correspondientes (o bien, *homólogos*) pertenecen a una recta **perpendicular** al eje de simetría.

#### Simetría Central

Se da cuando los puntos *correspondientes* de dos figuras **equidistan** del **centro de simetría**.  
Los puntos correspondientes (o bien, *homólogos*) pertenecen a una recta que **contiene** al centro de simetría.

_**Composición:**_  
La composición de dos simetrías axiales de ejes perpendiculares, es igual a una simetría central, cuyo centro es el punto de intersección de los ejes.

_**Descomposición:**_  
Recíprocamente, toda simetría central puede ser descompuesta como dos simetrías axiales (de infinitas formas).

### Rotación 📍

Tiene lugar cuando se **gira** una figura alrededor del **punto de rotación**.  
Los puntos *homólogos* **pertenecen** a una *misma circunferencia*.

_**Composición:**_  
La composición de **dos simetrías axiales** de ejes secantes, es una rotación cuyo centro es el punto de corte de dichos ejes, y el ángulo de giro es el doble del que determinan los ejes, en el sentido del primer al segundo eje.

_**Descomposición:**_  
Recíprocamente, se puede descomponer una rotación en dos simetrías axiales (de infinitas maneras).

### Traslación 📍

Es el **desplazamiento** de una figura en función a un **vector**. Tal que la distancia entre *homólogos* es la **misma**.  
Un punto `P'` es igual a `P + vector`.

_**Composición:**_  
La composición de **dos simetrías axiales** de ejes paralelos, es una traslación, cuyo vector tiene como características:

- Dirección perpendicular a los ejes.
- Sentido del primer al segundo eje.
- Módulo igual a la mitad de la distancia de los ejes.

_**Descomposición:**_  
Toda traslación puede descomponerse en dos simetrías axiales (de infinitas formas).

### Antitraslación 📍

Es la **composición** de **traslación y simetría axial**.  
A diferencia del resto, aplica la propiedad **conmutativa**, el **orden** de las isometrías **no altera** el resultado.

_**Composición:**_  
La composición de tres simetrías axiales, tal que, los ejes de dos de ellas sean paralelos y el tercero perpendicular a ambos, es una antitraslación.

_**Descomposición:**_  
Toda antitraslación puede descomponerse en tres simetrías axiales (de infinitas maneras posibles).

---

## Lugares Geométricos 📌

Es un **conjunto de puntos** en el plano que **satisface** una o varias **condiciones**.  
*Usualmente*, dichas *condiciones* suelen ser **distancias** a puntos, rectas o circunferencias **fijas** en un plano.

### Elemental 📍

#### Mediatriz

Es el L.G de los puntos en el plano **equidistantes** a los **extremos** de un segmento.  
O bien, una **recta perpendicular** a un segmento por su **punto medio**.

#### Bisectriz

Es el L.G de los puntos en el plano **equidistantes** a los **lados de un ángulo**.  
O bien, una **recta** que pasa por el **vértice** de un ángulo y lo **divide** en **dos ángulos iguales**.

#### Arco Capaz

Es el L.G de los puntos de un **semiplano** limitado por una **recta AB**, y que **contiene los vértices de los ángulos** cuyos lados pasan por A y B (respectivamente), siendo estos, **ángulos congruentes**.

#### Plano mediator

Es el L.G de todos los puntos en el espacio **equidistantes** a los **extremos** de un segmento.  
O bien, un **plano perpendicular** a un segmento por su **punto medio**.

Nota: Es el mismo concepto de *mediatriz*, esta vez, aplicado al **espacio dividido por un plano** (plano mediatriz o mediator), en lugar de una plano dividido por una recta.

#### Plano bisector

Es el L.G de todos los puntos en el espacio **equidistantes** a los **lados de un [ángulo _diedro_](#Ángulo-diedro)**.  
O bien, una **plano** que contiene la **arista** de un ángulo diedro y lo **divide** en **dos ángulos iguales**.

Nota: Es el mismo concepto de *bisectriz*, esta vez, aplicado a un **ángulo diedro dividido por un plano** (plano bisector), en lugar de un ángulo dividido por una recta.

#### Esfera

L.G de todos los puntos del espacio **distantes** a un punto **C** *(llamado centro)* **no más** que una distancia **r** *(llamada radio)*.  
La **intersección** de un plano secante con una esfera es un **circulo**.

#### Casquete esférico

L.G de todos los puntos del espacio **equidistantes** a un punto **C** *(llamado centro)* en **r** *(llamado radio)*.  
La **intersección** de un plano secante con un casquete esférico es una **circunferencia**.

### Sin isometría 📍

S/h

### Con isometría 📍

S/h

---

## Complemento 📌

### Lugar geométrico de Thales 📍

Es el L.G de los puntos del plano que contiene los vértices de los **ángulos rectos**, cuyos lados, pasan por **dos puntos fijos**. El mismo describe una **circunferencia**.

### Teorema de Thales 📍

Originalmente, aplicado a triángulos:  
Si en un triángulo se traza una **recta paralela** a cualquiera de sus lados, se obtiene un triángulo **semejante** al original. *Thales.*

Generalizando:  
Si varias rectas **paralelas** son cortadas por dos **secantes**, entonces los **segmentos** determinados sobre las secantes son **proporcionales**.

### Ángulos 📍

#### Clasificación por su medida

Nombre | Condición
--- | ---
Agudo | `< 90`
Recto | `= 90`
Obtuso | `> 90`
Llano | `= 180`

#### Ángulos entre paralelas

--- | Interno | Externo
--- | --- | ---
**Alterno** | Congruentes | Congruentes
**Colaretal** | Suplementarios | Suplementarios

**Internos:** Se ubican en la parte **interior** las paralelas.  
**Externos:** Se ubican en la parte **exterior** las paralelas.  
**Alternos:** Se situan a **distinto lado** de la transversal.  
**Colaterales:** Se situan al **mismo lado** de la transversal.

#### Relaciones

**Complementarios:** Par de ángulos que suman **90 grados**.  
**Suplementarios:** Par de ángulos que suman **180 grados**.

#### Ángulo diedro

Ángulo definido por **planos** *(a diferencia del tradicional, definido por **rectas**)*.

### Triángulos 📍

#### Clasificación por sus lados

Nombre | Condición
--- | ---
Equilatero | 3 iguales
Isósceles | 2 iguales
Escaleno | 3 desiguales

#### Clasificación por sus ángulos

Nombre | Condición
--- | ---
Acutángulo | 3 agudos
Rectángulo | 1 agudo
Obtusángulo | 1  obtuso

#### Existencia

Un lado debe ser **mayor** a la **diferencia** de los otros, y **menor** a la **suma** de los mismos.

#### Congruencia entre triángulos

**Primer criterio:**  
Cuando son congruentes **dos lados** y el **ángulo que conforman**.

**Segundo criterio:**  
Cuando son congruentes **dos ángulos** y el **lado común**.

**Tercer criterio:**  
Cuando son congruentes los **tres lados**.

**Cuarto criterio:**  
Cuando son congruentes **dos lados** y un **ángulo que no conforman** *(ángulo adyacente, sólo, a **uno** de los dos lados)*.

#### Correspondencia entre ángulos y lados

Las **desigualdades** entre **lados**, son las **mismas** para los **ángulos opuestos** de los mismos.

#### Ángulos internos y externos

**Internos:** Suman **180 grados**.  
**Externos:** Suman **360 grados**.

Un ángulo **externo** es la **suma** de los dos **internos no contiguos**.

#### Rectas y puntos notables

Definición | Recta | Punto
--- | --- | ---
Ver [aquí](#Mediatriz). | Mediatriz | Circuncentro
Ver [aquí](#Bisectriz). | Bisectriz | Incentro
*Perpendicular* a un lado por el *vértice opuesto*. | Altura | Ortocentro
Determinado por un *vértice* y el *punto medio* del *lado opuesto*. | Mediana | Baricentro

### Cuadriláteros 📍

#### Clasificación de cuadriláteros

- **Paralelogramo:** Lados paralelos dos a dos.
  - *Rectángulo:* Cuatro ángulos rectos.
  - *Cuadrado:* Rectángulo rombo.
  - *Rombo:* Cuatro lados iguales.
- **Trapecio:** Dos lados paralelos *(llamados bases)*.
  - *Trapecio Rectángulo:* Un lado perpendicular a las bases *(dos ángulos rectos)*.
  - *Trapecio Isósceles:* Lados no paralelos son iguales.
  - *Trapecio Escaleno:* Lados no paralelos son desiguales y no forma ángulos rectos *(no es rectángulo ni isósceles)*.
- **Trapezoide:** No tiene lados paralelos.
  - *Romboide:* Pares de lados consecutivos iguales.

#### Cuadriláteros inscriptibles

Un cuadrilátero es **inscriptible** si sus **ángulos opuestos son suplementarios** (suman 180 grados).  
Si el cuadrilátero ABCD es inscriptible, entonces `AB.CD + AD.BC = AC.BD`.

---

Volver [🔼](#Geometría-II)
