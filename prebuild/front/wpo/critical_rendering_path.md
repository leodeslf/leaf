---
layout: default
---
## Critical Rendering Path Optimization

Course by Google (original title: Website Performance Optimization).

### The Website Performance Optimization

#### Critical Rendering Path (CRP)

Is the sequence of steps that the browser goes through to convert HTML, CSS, and JavaScript into actual pixels on the screen.

The parts involved in are:

- **DOM**
- **CSSOM**
- **JavaScript**
- **Render Tree**
- **Layout**
- **Paint**

#### DOM

The process begins by reading each *character* in the html file sent by the server. Then the browser converts it to *tokens* that will be used to build out *nodes*. Finally, once the reading process is finished we get the *DOM*, which is a tree structure that captures the *content* and *properties* of the HTML and all the *relationships* between the nodes.

#### CSSOM

The same process is followed (characters, tokens, nodes) to build the *CSSDOM*. Converting CSS into CSSOM is a *Render-Blocking* process.

More at [The Beginners Guide to CSS Object Model (CSSOM) (hongkiat.com)](https://www.hongkiat.com/blog/css-object-model-cssom/).

#### Render Tree

The Render Tree only captures *visible content*, it takes the structure from the DOM and calculates its corresponding styles from the CSSOM.

#### Layout

This process is run from the Render Tree to *compute the geometry* (positions and dimensions) of each node starting from the highest hierarchy. Each time the screen is resized, the layout process is restarted.

#### Paint

Once we know which nodes are visible, it's time to paint the actual pixels on the screen, aka *rasterizing* (color, background, shadow, blending, and more).

#### Rendering the Page

```html
<!DOCTYPE HTML>

<head>
  <script src="main.js"></script>
  <link rel="stylesheet" href="style.css" type="text/css"></link>
</head>

<body>
  <!-- Some content here... -->
</body>
```

Steps to render the example page:

1. Begin constructing the DOM by parsing HTML.
1. Request CSS & JS resources.
1. Parse CSS and construct the CSSOM.
1. Execute JS.
1. Merge DOM and CSSOM into the Render Tree.
1. Run Layout.
1. Run Paint.

### The Critical Rendering Path

#### Optimizing the DOM

The best way to optimize the DOM size and improve the page-load speed is to *avoid large files* by minifying them, to *reduce the amount of files* (specially the critical ones), and to *prevent unnecessary network requests* by caching.

More at [Optimizing Encoding and Transfer Size of Text-Based Assets (web.dev)](https://web.dev/optimizing-content-efficiency-optimize-encoding-and-transfer/).

##### Minify

It's done by *removing unnecessary characters*, like comments, white spaces, new lines, and using shorter variable names. After this process the code is still valid and can be run immediately by the browser's interpreter. This process helps deliver lighter files and can even improve the runtime overall performance.

##### Compress

It's to *encode information using fewer bits* with a compression algorithm (usually *Gzip* for the web). Compressed files cannot be run, they need to be uncompressed to be readable by the interpreter. It's a process that often massively reduces the file size at rates of as high as 70-90% for larger files.

All modern browsers support Gzip compression and will automatically request it for all HTTP requests, the only thing we have to ensure is that the server is configured with the recommended settings to serve these files.

Compression is also used on other than text assets like image, sound, and video. Most of them, for example, can add up to tens of kilobytes on metadata. Those files require more specific techniques and algorithms to be compressed.

##### Cache

Caching is a technique in which we *store a copy* of a given resource and serve it back when requested. It's not only supported in all browsers, in fact they'll first route all HTTP requests to the cache to try to fulfill the request from it, which eliminates both the network latency and traffic which is always positive.

HTTP caching help us to:

- Avoid large resource requests which require several requests.
- Make available a greater bandwidth for critical resources.
- Avoid consuming one of the limited in-parallel requests.
- Save people's money when using mobile plans.
- Load a given resource faster.

More at:

- [Prevent unnecessary network requests with the HTTP Cache (web.dev)](https://web.dev/i18n/en/http-cache/)
- [HTTP caching (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Caching).

#### Unblocking CSS with Media Queries

As said before, parsing a CSS asset is a Render-Blocking process. We can avoid that by specifying a *media attribute*. The browser will download all CSS resources, but read and parse only the assets in which the given media value matches.

#### JavaScript and the CRP

JavaScript execution (and downloading unless it has `async` or `defer` attributes) is a *Parser-Blocking* process. It means that the process of building the DOM out of the HTML gets interrupted as soon as a script is found, then resumed after its execution. During that, we can use JavaScript to manipulate (read, write, and rewrite) the current DOM and CSSOM.

##### JavaScript dependencies

Any script found after a CSS request will be delayed if the CSSOM hasn't yet been initialized (*CSS blocks JavaScript execution*), the script will run as soon as we get the CSS response and construct the CSSOM. As JavaScript would need to access the CSSOM as well as the DOM, it's said that *JavaScript depends on the CSSOM*.

##### Making JavaScript asynchronous

A script tag pointing to an external file to be loaded could have the *async attribute* to make it run in parallel, this way it *does not block the parsing* processes. In case a script is available before the DOM or the CSSOM construction is finished, the parsing doesn't get blocked.

##### Making JavaScript to wait

Another tool that can help us to avoid a Parser-Blocking script is the *defer attribute*. It makes the script *wait until the document gets parsed* to execute. A good use case scenario is any script that has low priority or won't manipulate the DOM/CSSOM during its construction.

##### Keeping JavaScript internal

We can speed up the page-load by serving JavaScript internally as a script block instead of externally through a script tag with a source URL. This way we *avoid a network request* which is usually much slower as it's time and network bandwidth consuming (the amount of requests in parallel are also limited).

One limitation is that the async attribute will not prevent the script block to block the parsing. An exception to this occurs when we put the script above the CSS.

### Optimizing the CRP

Other than specific optimizations (like minifying, compressing, caching, and reducing the amount of render and parser blocking resources), there are a few more *techniques for all the assets* involved in the CRP.

We can enumerate three:

1. **Minimize Critical Bytes**: probably the most obvious thing to do is to reduce the total size of each file (reducing the actual amount of files will also help to achieve that).
1. **Reduce Critical Resources**: these are the assets that could block the initial rendering of the page. They are usually downloaded with the highest priority and before the others.
1. **Shorten Critical Path Length**: as the amount of in-parallel requests is limited and quite short, we should avoid chaining (serializing) a large number of assets and also the ones requested in parallel.

More at [How the Browser Pre-loader Makes Pages Load Faster (andydavies.me)](https://andydavies.me/blog/2013/10/22/how-the-browser-pre-loader-makes-pages-load-faster/).
