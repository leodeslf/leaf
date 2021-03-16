# Web

## HTTP status code

* `1XX`: Informational.
* `2XX`: Successful.
* `3XX`: Redirects.
* `4XX`: Client errors.
* `5XX`: Server errors.

## URL anatomy

Example:

```https
https://www.example.com.uy:80/folder/resourse?id=1#section-id
```

Part | Concept
--- | ---
`https://` | Protocol.
`www` | Subdomain name.
`.example` | Domain name.
`.com` | Top-level Domain name [**TLD**].
`.uy` | Country Code Top-level Domain name [**ccTLD**].
`:80/` | Port (80 by default for webs).
`folder/resource` | Path.
`?id=1` | Query string (used by server-side software).
`#section-id` | Fragment (named anchor).

## Browsers

|| Rendering Engine | JavaScript Engine
--- | --- | ---
**Chrome** | Blink | V8
**Edge** | EdgeHTML / Blink | Chakra
**Firefox** | Gecko | SpiderMonkey
**IE** | Trident | Chakra
**Opera** | Blink | V8
**Safari** | WebKit | Nitro

Notes:

* Blink comes from Webkit library named WebCore, forked by Google in 2013.
* Since 2019, Edge uses Blink (still being WebKit on iOS).
