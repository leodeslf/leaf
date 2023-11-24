# Site Rendering & Generation

A summary of different **techniques** for *choosing where and when to parse JavaScript into HTML*.

<!-- Rendering on the Web -->
<!-- https://web.dev/rendering-on-the-web -->

<!-- The Future (and the Past) of the Web is Server Side Rendering -->
<!-- https://deno.com/blog/the-future-and-past-is-server-side-rendering -->

<!-- 10 Web Development Trends in 2023 -->
<!-- https://www.robinwieruch.de/web-development-trends/ -->

<!-- Server-Side Rendering VS. Client-Side Rendering -->
<!-- https://www.clariontech.com/blog/server-side-rendering-vs.-client-side-rendering -->

<!-- Client-side vs. Server-side vs. Pre-rendering for Web Apps -->
<!-- https://www.toptal.com/front-end/client-side-vs-server-side-pre-rendering -->

<!-- Visual Explanation and Comparison of CSR, SSR, SSG and ISR -->
<!-- https://dev.to/pahanperera/visual-explanation-and-comparison-of-csr-ssr-ssg-and-isr-34ea -->

## Client-Side Rendering (CSR)

## Server-Side Rendering (SSR)

<!-- Server-Side Rendering -->
<!-- https://www.gatsbyjs.com/docs/glossary/server-side-rendering/ -->

## Static Site Generation (SSG)

<!-- Static Site Generator -->
<!-- https://www.gatsbyjs.com/docs/glossary/static-site-generator/ -->

<!-- What is a static site generator? -->
<!-- https://www.cloudflare.com/learning/performance/static-site-generator/ -->

<!-- What is a Static Site Generator? And 3 ways to find the best one -->
<!-- https://www.netlify.com/blog/2020/04/14/what-is-a-static-site-generator-and-3-ways-to-find-the-best-one/ -->

<!-- Static Site Generators -->
<!-- https://devopedia.org/static-site-generators -->

## Incremental Static Regeneration (ISR)

<!-- A Complete Guide To Incremental Static Regeneration (ISR) With Next.js -->
<!-- https://www.smashingmagazine.com/2021/04/incremental-static-regeneration-nextjs/ -->

<!-- Incremental Static Regeneration (ISR) Overview -->
<!-- https://vercel.com/docs/concepts/incremental-static-regeneration/overview -->

<!-- Incremental Static Regeneration -->
<!-- https://nextjs.org/docs/basic-features/data-fetching/incremental-static-regeneration -->

---

Reference:

- [10 Web Development Trends in 2023 (robinwieruch.de)](https://www.robinwieruch.de/web-development-trends/).
- [Client-side vs. Server-side vs. Pre-rendering for Web Apps (toptal.com)](https://www.toptal.com/front-end/client-side-vs-server-side-pre-rendering).
- [Rendering on the Web (web.dev)](https://web.dev/rendering-on-the-web).
- [Server-Side Rendering VS. Client-Side Rendering (clariontech.com)](https://www.clariontech.com/blog/server-side-rendering-vs.-client-side-rendering).
- [The Future (and the Past) of the Web is Server Side Rendering (deno.com)](https://deno.com/blog/the-future-and-past-is-server-side-rendering).
- [Visual Explanation and Comparison of CSR, SSR, SSG and ISR (dev.to)](https://dev.to/pahanperera/visual-explanation-and-comparison-of-csr-ssr-ssg-and-isr-34ea).

<!-- 
Edge Rendering
Altering rendered HTML at the edge before sending it on to the client

Incremental Static Generation
Being able to dynamically augment or modify a static site even after the initial build (Next.js ISR, Gatsby DSG)

Islands Architecture
Isolated islands of dynamic behavior with multiple entry points in an otherwise static site (Astro, Eleventy)

Multi-Page Application (MPA)
Apps that run entirely on the server, with minimal client-side dynamic behavior

Partial Hydration
Only hydrating some of your components on the client (e.g. React Server Components)

Progressive Enhancement
Making sure an app is functional even without JavaScript

Progressive Hydration
Controlling the order of component hydration on the client

Resumability
Serializing framework state on the server so the client can resume execution with no duplicated code execution.

Server-Side Rendering (SSR)
Dynamically rendering HTML content on the server before rehydrating it on the client

Single Page Application (SPA)
Apps that run entirely in the browser

Static Site Generation (SSG)
Pre-rendered static content, with or without a client-side dynamic element

Streaming SSR
Breaking down server-rendered content in smaller streamed chunks
 -->
