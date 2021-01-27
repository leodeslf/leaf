# Web

## Table of contents

* [HTTP status code](web.md#http-status-code)
* [URL anatomy](web.md#url-anatomy)

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
