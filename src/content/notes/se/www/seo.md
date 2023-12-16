# Search Engine Optimization

SEO is *a set of practices* and strategies meant to **improve online presence and authority**

...

(start of draft)

<!-- ! what is SEO -->

**Online presence** depends on multiple, often related factors such as: *what content* do we publish and its quality, overall meaningfulness; *how is that content shaped* both literally (grammatically, syntactically, etc.) and technically (the web/app's structure); *how linked it is* to and from the external world, other platforms or networks; and *how popular it is* based on visits, clicks, interactions, or how much time does the user spend in the site.

<!-- ! why should we do (on-page) SEO -->

<!-- ? increase crawlability
increase usability
enhance the brand
gain customer loyalty
get more conversions -->

<!-- ! real life SEO results -->

A **Search Engine Results Page** (or SERP) can give us a quick and realistic view  of *how a product performs*, e.g.: by searching on Google or Bing.

<!-- ! paid vs organic results -->

Results can be mainly categorized by two traits: *paid listings* (advertizing), and *organic results* (non-paid items).

<!-- ! results' composition -->

Most SERPs show a **common result composition**: *a headline, a description, and a visible URL*. The most popular ones can also distinguish *news and maps* as well as display media such as *images or video thumbnails*. We can also get **enhanced results**, which are displayed through a more specific way using *carousels, lists, or cards with much more details* by taking key information from *Structured Data* from a given site, such as Open Graph metadata tags. For example, Google Knowledge Graph consumes information from Wikipedia and other relevant sources like review sites to show the most relevant data about a given search result.

<!-- ! keywords -->

## Keywords

<!-- ! what are keywords -->

<!-- Keywords are **words or phrases** a given site should include *to match what users type* to find us (or our competitors), our products or services. -->

To **research keywords** we can identify at least three categories:

1. *Domain relevance*,
1. *Search volume*,
1. *Business competitiveness*,

- the more *relevant* to our domain, industry, or specific product/service;
- the ones that have the greater *search volume* and are more popular;
- the ones that are *used by our main competitors* use the most.

Useful tools for researching target keywords:

- [Google Search Console (search.google.com)](https://search.google.com/search-console).
- [Google Trends (trends.google.com)](https://trends.google.com/trends/).
- [Keyword Planner (ads.google.com)](https://ads.google.com/intl/en-419/home/tools/keyword-planner/).
- [AnswerThePublic (answerthepublic.com)](https://answerthepublic.com/).
- [Moz Keyword Explorer (moz.com)](https://moz.com/explorer).
- [Keyword Magic Tool (semrush.com)](https://www.semrush.com/analytics/keywordmagic/start).

<!-- ! on less popular keywords -->

A few keywords have a huge search volume, while *most of them are less popular* and are clearly less competitive. however, the less used ones should not be underestimated. A single one may not do much of a difference, but if we *smartly combine several of them* we could get considerable benefits. Those unpopular terms are known as **long tail keywords**, as they conform the low but long section of keyword usage graph. <!-- they are less competitive -->

<!-- ! when to invest -->

A god idea could be to invest at the start for a short period of time to immediately get more traffic as well as to track and analyze improvements. Then, these insights could be used for the long-term organic traffic grow.

## Benefits of a Good SEO

- *Get customer insights*: what products, features, budgets, etc. are customers looking for (and what they are not interested in).
- *Analyze the competence*:
  - what are other doing well or wrong
  - attracting their customers
  - retaining your own customers
- *Measure your business performance*:
  - measure the results of actual SEO efforts
  - measure the performance of a given product/service
  - measure the performance of a given features

<!-- ! what and how should we optimize our sites and content -->
on-page:

- clarity, quality, and relevance [relationship between site pages, meaningful links among pages, meaningful URL naming, meta tags (structured information, schema data, title, description, keywords, images's alternative text)]
  - link from within the site
    - navigation links (usually present in every page of the site),
    - and contextual links (appear only in some related sites)
  - leverage XML sitemaps (sitemaps.org)
  - set rules for search engines and their crawlers (robotstxt.org)
    - its for how (not if they do or not, but how) a page is crawled
    - use a meta tag robots/noindex to prevent a page from being indexed
    - keep servers up, fast load times, use secure protocols
  - avoid "duplicate content" a single url that gets repeated through the use of additional parameters. use canonical urls and proper redirects (temporary or permanent) in case we move a site URL
  - use schema or "structured data" whenever possible for showing information in standard formats (schema.org)
  - (Google) core web vitals (LCP, FID, CLS). there are results for both field data (actual, real users' data, which is used by SEs for ranking purposes) and lab data (generated on simulated environment)
  - plan content (its types, topics, medium [or channel], influencing people and orgs), keep good quality in all senses. measure after promoting.
off-page
  - link from external pages ("vote of confidence"), for each link, look after its popularity (amount) and quality (relationship, similarity, and relevance related to the pointed content, also consistency on time for those values of popularity)
    - directories
    - local business directories (or foreign, business related groups)
    - share on newsletter, blog, networks, and social sites, specially leverage social media channels
- specify KPIs, but specifically SEO KPIs to measure performance
  - analyze keywords and links, see what's working, but also look for missing opportunities (keep doing keyword research)
    - Moz, Majestic SEO, Ahref, Raven, Semrush
  - *Keep content as specific as possible*, high levels of expertise matching what the user writes is what a search engine looks for.

<!-- ! glossary -->

<!-- 
crowler, indexing

- Search engine results page (SERP)
- Click-through rate (CTR), higher is better
- Bounce (entering a page and immediately clicking the back button), lower is better
- Dwell time (the time spend by the user in the site until clicking the back button), the longer the better
- Session duration, longer is better
- Pages per session, more is better
- Outbound links, more (and working) is better
- Accessibility (`alt` attribute on images, `aria` [Accessible Rich Internet Applications] attributes), should be wright
- Meta tags (description, author, featured image, canonical url), good quality is preferred

how the page content loads (try to do it fast)

## Good content

## Semantic HTML

## Load content fast

- client-side rendering (render the HTML with JS in client's browser SPA). At the start the page is empty, then it loads the structure and content from scripts. Google will (hopefully) run JS by searching 
Tradeoffs
good: Great UX (just after loading)
bad: Slow to meaningful content. Might confuse bots

- static generation:
1. build pages in advance
1. cache on CDN
Tradeoff
good: fast bot-friendly content
bad: data can get stale. Does not scale well.

- server-side rendering (render on demand), bots get fully rendered html on the initial request
tradeoff
good: bot-friendly content
bad: slower. data fetching redundancy.

- incremental static regeneration (ISR)
tradeoff
good: fast, fresh, bot-friendly
bad: deployment complexity. Vendor lock-in
 -->

---

Google Learning Path...

1- Fundamentals:

- [How does Google Search work?](https://support.google.com/webmasters/answer/9128586)
- [Optimize your site for search engines](https://support.google.com/webmasters/answer/9128678)
- [Measure your performance on Google](https://support.google.com/webmasters/answer/9128678)

2- Search Console (optional, tool specific):

- [Getting started with Search Console](https://support.google.com/webmasters/answer/10267942?sjid=18127499080604264918-SA)
  - ...
  - [(Google) Search Central](https://developers.google.com/search/docs) (general src of knowledge)
  - [(Google) Search Console API](https://developers.google.com/webmaster-tools)
  - [(Google) Search Console](https://search.google.com/search-console)

3- SEO:

- [Understand how Google works with your site](https://developers.google.com/search/docs/advanced/guidelines/get-started)
- [Browse the list of key tools and reports in Search Console](https://support.google.com/webmasters/answer/9133276)
- [What are impressions, position, and clicks?](https://support.google.com/webmasters/answer/7042828)

4- SEO for web developers:

- [In-depth guide to how Google Search works](https://developers.google.com/search/docs/fundamentals/how-search-works)
- [Page Indexing report](https://support.google.com/webmasters/answer/7440203#zippy=%2Cseos-developers-and-experienced-website-owners-usage-guide)
- [Performance report (Search)](https://support.google.com/webmasters/answer/7576553)
- [Mobile Usability report](https://support.google.com/webmasters/answer/9063469)
- [Accelerated Mobile Pages (AMP) status report](https://support.google.com/webmasters/answer/7450883)
- [Rich result reports](https://support.google.com/webmasters/answer/7552505)
- [URL Inspection Tool](https://support.google.com/webmasters/answer/9012289)
- [Maintaining your website's SEO](https://developers.google.com/search/docs/fundamentals/get-started)

---

More resources...

1- Main business orgs:

- [Search Engine Journal (searchenginejournal.com)](https://www.searchenginejournal.com/).
  - [SEO Trends 2024 (book)](https://www.searchenginejournal.com/seo-trends/?itm_source=website&itm_medium=home-featured&itm_campaign=website-home-featured).
- [Search Engine Land (searchengineland.com)](https://searchengineland.com/).
  - [SEO Periodic Table (book)](https://downloads.searchengineland.com/rs/727-ZQE-044/images/SEL_2106_SEOPerTabl.pdf) (book)
  - [What is SEO](https://searchengineland.com/guide/what-is-seo).
- Relevant Blogs:
  - Advance Web Ranking SEO Blog
  - Ahref Blog
  - Majestic Blog
  - Moz Blog
  - Raven Blog
  - Semrush BLog

2- Tech specific:

- [How To Optimize Resource Loading With Priority Hints (debugbear.com)](https://www.debugbear.com/blog/priority-hints?utm_source=newsletter&utm_medium=sponsored&utm_campaign=frontend-focus-2).
- [SEO for Developers in 100 Seconds (youtube.com)](https://www.youtube.com/watch?v=-B58GgsehKQ&ab_channel=Fireship).

3- linking:

- [Breaking Down Link Building: Internal vs External Links (aicontentfy.com)](https://aicontentfy.com/en/blog/breaking-down-link-building-internal-vs-external-links)
- [Why Internal and External Links Are Important for SEO (seoclarity.net)](https://www.seoclarity.net/resources/knowledgebase/why-internal-and-external-links-important-for-seo-16559/)
- Moz
  - [begin](https://moz.com/beginners-guide-to-link-building)
  - [pro](https://moz.com/professionals-guide-to-seo/link-building)
  - [int](https://moz.com/learn/seo/internal-link)
  - [ext](https://moz.com/learn/seo/external-link)

---

Reference:

- [SEO Learning Center (moz.com)](https://moz.com/learn/seo).
  - <https://moz.com/how-to-rank>
- [SEO Foundations (linkedin.com, course)](https://www.linkedin.com/learning-login/share?forceAccount=false&redirect=https%3A%2F%2Fwww.linkedin.com%2Flearning%2Fseo-foundations-14828080%3Ftrk%3Dshare_ent_url%26shareId%3DPnGKkxu3TUKQV4YxI2KEvQ%253D%253D).
