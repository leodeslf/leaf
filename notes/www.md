# WWW

The World Wide Web (WWW) is an **Information System** in which resources are accessible over the Internet, linked by *hyperlinks*, identified by *Resource Locators* (URLs), and served via *Hypertext Transfer Protocol* (HTTP).

It was invented by Tim Berners-Lee in 1989 who also wrote the first Browser while working at CERN in Geneva, Switzerland. The WWW was originally meant to transfer documents as *Hypertext Markup Laguaje* (HTML) files, then called Websites.

## HTTP status code

* `1XX` Informational.
* `2XX` Successful.
* `3XX` Redirects.
* `4XX` Client errors.
* `5XX` Server errors.

## URL anatomy

Part|Concept
---|---
`https://`|Protocol
`www`|Subdomain name
`.example`|Domain name
`.com`|Top-level Domain name (**TLD**)
`.uy`|Country Code Top-level Domain name (**ccTLD**)
`:80/`|Port (80 by default for webs)
`folder/resource`|Path
`?id=1`|Query string (used by server-side software)
`#section-id`|Fragment

Example:

```http
https://www.example.com.uy:80/folder/resourse?id=1#section-id
```

## Browser engines

||Rendering engine|JavaScript engine
---|---|---
**Chrome**|Blink|V8
**Edge**|EdgeHTML / Blink|Chakra
**Firefox**|Gecko|SpiderMonkey
**IE**|Trident|Chakra
**Opera**|Blink|V8
**Safari**|WebKit|Nitro

Notes:

* Blink comes from a Webkit library called WebCore, forked by Google in 2013.
* Since 2019, Edge uses Blink (still being WebKit on iOS).
