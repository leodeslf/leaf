# Browser Rendering Optimization

Course by Google.

## The Critical Rendering Path

### Frames

A modern device tends to draw *60fps* (frames per second) due to its screen refresh rate of 60Hz (in most of the cases), that's about 16ms between each new frame.

Our target as developers should be to make animations and transitions to render at 60fps consistently from start to finish. By doing so, we ensure to bring the best experience to the user by making a product that runs smoothly *avoiding juddering*.

#### Juddering

It happens when the *fps drops* to the point that it's easily noticeable by the human eye because the drawing process has been slowed down (or even worse, the whole page/app lacks performance for some reason).

### Rendering Pipeline

- **JavaScript**: It would be used to handle work that will result in visual changes, like animation functions, sorting data, or manipulating the DOM/CSSOM.
- **Style**: It can be affected from JavaScript or CSS by using animations, transitions, or the Web Animation API (Timing Model and Animation Model).
- **Layout**: It's the computation of each element's geometry (position, size).
- **Paint**: Once the layout is done, each element gets painted on the screen pixel by pixel on a process known as rastering.
- **Compose**: It's where the browser puts the inidividual layers toghether.

There are three ways the render pipeline can make a frame:

1. Layout, then Paint, then Composite
1. Paint, then Composite
1. Only Composite

All of these cases will be the result of a Style change. A Style change that come from either JavaScript or CSS.

<!-- http://blog.wilsonpage.co.uk/introducing-layout-boundaries/ -->

## App Lifecycles (RAIL)

The four mayor areas of a site/app life cycle:

- **Response**: it's the time it takes to give feedback from the users input. If the response time gets longer than 100ms, it will be noticed as lagged.
- **Animate**: either JavaScript or CSS, triggered by the user or a style rule. Each frame should be done in less than 16ms to ensure animations run at 60fps.
- **Idle**: it begins immediately after the site/app loads and it's waiting for the user to interact, it's *when nothing happens*. During this state, we usually do the post-loading of anything that can wait and isn't included in the CRP (like images, videos, or any low-priority content). It's around 50ms long after the load.
- **Load**: it's the actual first load of the page and all it's required assets before becoming idle. It should take less than 1s.

## Weapons of Jank Destruction

Steps to ensure we run on a *proper environment*:

1. Quit other apps.
1. Go incognito.
1. Focus on the cause of bottlenecks, not symptoms.
1. Measure first, then optimize.

To cover most of the use case scenarios and make a proper rendering performance analisis, we need to test on different *devices* (Windows, Mac, Android) and *browsers* (Chrome, Edge, Firefox, IE), as they may have a different JavaScript and Rendering *Engine*, which may result on different behaviors and an overall performance gap, a gap that's quite big specially when talking about rendering.

Our primary tool is the browsers developers tool, the *DevTools* in Chrome, which is used to monitor the *Rendering Pipeline trace* (among other functionalities) from its *Performance tab* (previously Timeline), giving us access to valuable data like events, function calls, the line of code that fires them, timing, and more.

## JavaScript

### Just In Time (JIT) Compilers

JavaScript compilers do compile the source code immediately after the file is loaded, that means they *generate a new code* to be executed from the one we write in JavaScript. Different engines may vary on the way they compile giving different results. That's why micro-optimizations aren't that effective and, in some cases, it can get even worse depending on the engine.

### JavaScript Animations

The proper tool to make animations in JavaScript is the `requestAnimationFrame` API which is a method used to *call a given function the next frame* before it repaints, a callback to that function is passed as an argument. The given function itself needs to call `requestAnimationFrame` again to keep the loop running as an animation. To stop it, we use `cancelAnimationFrame`. It's said `requestAnimationFrame` is one-shot.

<!-- https://developer.mozilla.org/en-US/docs/Web/API/window/requestAnimationFrame -->

### Web Workers

JavaScript is a *single-thread environment*, that means that's not possible to run multiple scripts at the same time (in parallel). It was true until the invention of Web Workers. A Web Worker is a script that runs in a *background thread*, allowing us to run scripts that hanlde computationally intensive tasks without blocking the UI or other script in the main thread. Transferring data between a worker and a non-worker script can be achieved via a thread-like message passing.

Web Workers do have access to:

- The `navigator` object.
- The `location` object.
- The application cache.
- Importing scripts using the `importScripts` method.
- Spawning other workers, (among other features).

Web Workers do NOT have access to:

- The DOM tree.
- The `window` object.
- The `document` object.
- The `parent` object.

<!-- https://www.html5rocks.com/en/tutorials/workers/basics/ -->

### JavaScript Memory Management

JavaScript implements *Garbage Collection* (it's said it is garbage-collected), which means for us developers, we don't need to worry about pointers, deleting objects, or how to handle local variables as it gets done by the engine itself automatically. The dowside is that the garbage collector is *Script-Blocking*, and, in consequence, it can be Render-Blocking resulting in a noticeable freezzing of the page/app.

<!-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Memory_Management -->

## Styles and Layout

### Recalculating Styles

The *performance cost* of the Style stage ("Recalculate Style" in DevTools) tends to *scale linearly* with the number of elements affected by style changes.

At this stage, the rendering engine has to, first, read the whole CSSOM to *identify matching selectors* for a given node/element, then *apply all of them*. There could be more than one selector pointing at the same element (different or even identical ones), as well as repeating rules affecting the same attributes, in such a case, the rule gets applied and overridden each time it appears.

Let the engine work faster:

- Reduce the number of style rules.
- Reduce complex and deeply nested selectors.
- Remove unused CSS.
- Avoid redundancy.
- Avoid overrides.

### Layout and Reflows

Some style changes trigger one of the most *expensive* processes in the rendering pipeline, the Layout stage (or Reflow). It's there where new sizes and positions get calculated for an element.

In fact, most of the times several nodes get affected from a single reflow, mainly for two reasons. The first one, a reflow on a single node can *alter the ones next to it*, or even its own parent (by shrinking and growing, for example). The second one, *reflows cascade down the hierarchy*, a reflow on a parent element triggers reflow on all its child nodes. A small reflow can easily trigger reflow on the entire page.

Reduce layout calculations:

- Target elements that are lower in the DOM tree.
- Avoid changing layout properties (specialy animating them).
- Use absolute positioning to separate layers.

### Repainting

As said before, Paint is the stage where shapes' pixels defined in Layout get filled out. Usually *it's less expensive than Layout*, however, for some properties to apply, it can still take a considerable amout of time, specially for properties like `box-shadow`.

Optimize the Paint process:

- Use `will-change` to specify which rules are likely to change in a near future.
- Isolate nodes on their own layer to prevent repainting on sibling nodes.
- Reduce the amount of changes that trigger repaints.
- Use *Hardware Acceleration* (GPU).

#### Hardware Acceleration

It's to *perform a task on the Graphics Processing Unit* (GPU) instead of the used by default Central Processing Unit (CPU), which is remarkably faster when dealing with pixel-by-pixel calculations, as the ones done in the Paint stage.

The browser *automatically defines which styles do run on the GPU* and which ones do not. However, there are properties that will always trigger Hardware Acceleration, we can use them to force the browser to render a given node always on the GPU, even when the visual result remains the same (e.g.: `transform: translate(0, 0);`).

Forcing the use of GPU:

- Set `opacity` to less than `1`.
- Set `transform` to anything but `none`.

<!-- https://www.hongkiat.com/blog/writing-better-css/ -->
<!-- https://dev.opera.com/articles/css-will-change-property/ -->

### Forced Synchronous Layout

Layout Thrashing occurs when JavaScript *first writes, then reads* the DOM multiple times triggering reflow each time it happens. The rendering engine behaves as follows, *when the DOM is written to, Layout is invalidated*, new changes apply, and finally the document is reflowed.

The browser tends to wait for the current frame to finish, then it performs this reflow. But, when we read a geometric value from the DOM before the current frame to be finished, the browser needs to *force Layout to perform early* so we can read it, that behavior is known as Forced Synchronous Layout.

An ideal (but not realistic) solution would be to *re-order the execution* so that we first read the current DOM, then we write on it (invalidating the Layout, but not forcing it to perform as we aren't reading), and finally only one reflow is triggered at the end of the frame.

#### Trigger Reflows Asynchronously

As mentioned before, `requestAnimationFrame` executes a given function the next frame as soon as it starts. So it can perform *writes without triggering reflows* while not having to re-order the code, and keeping the reads synchronous on frame.

<!-- http://blog.wilsonpage.co.uk/preventing-layout-thrashing/ -->
<!-- https://developers.google.com/web/fundamentals/performance/rendering/avoid-large-complex-layouts-and-layout-thrashing -->

## Composing and Painting

### Painting

It's the process of *filling in pixels on the screen*, and it's often the *longest-running* of all tasks in the pipeline. That's why it's so important to optimize (or avoid) it.

Style rules that won't trigger Paint are `transform` and `opacity`, prefer these rules when dealing with animations. Any property apart from these two will always trigger Paint. A Layout change will always trigger Paint too, since affected elements need to "fix" their pixels.

How to reduce Paint work load:

- *Avoid reflows* and, in consequense, painting.
- *Use alternative style rules* that won't trigger repaint.
- *Use layers* to isolate changes from a given element.
- *Reduce painting areas*, the less pixels to repaint, the better.

<!-- https://developers.google.com/web/fundamentals/performance/rendering/simplify-paint-complexity-and-reduce-paint-areas -->

#### Painting by Layers

The browser is capable of painting not only into a single image in memory, but into multiple images, or *Compositor Layers*. Layers are one of the best options to isolate changes and prevent unnecessary work to be done, but we *shouldn't abuse of them*, as they require memory and management.

#### Debugging Repaints

We can see the screen areas that are being repainted by using the **Paint flashing** tool from the Rendering tab of the DevTools in Chrome.

### Composing

It's the process of *mixing layers* on screen displayed as a single image.

#### Promoting new layers

A way to make that is to use the `will-change` rule, by passing any value that is related to a geometric/positioning property, like `top`, `left`, `hight`, or `width`, we (almost) ensure the browser will "prepare" for these changes by creating a new layer.

It's also possible to do that with the `transform` rule, with a neutral value if no visual changes need to be done (e.g.: `transform: translateZ(0)`), also known as the *no-transform hack*. It always triggers the creation of a new layer even for older browsers and Safari, something that won't happen if using `will-change`.

In a production environment it's often needed to use both rules, e.g.:

```css
div {
  transform: translateZ(0);
  will-change: transform;
}
```

<!-- https://developers.google.com/web/fundamentals/performance/rendering/stick-to-compositor-only-properties-and-manage-layer-count -->