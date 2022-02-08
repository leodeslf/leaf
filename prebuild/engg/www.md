---
layout: default
---
## World Wide Web

The World Wide Web (WWW), also known as the Web, is an **Information System** in which resources are accessible over the *Internet*, linked by *hyperlinks*, identified by a *Uniform Resource Identifier* (URI), and served via the *Hypertext Transfer Protocol* (HTTP).

It was invented by **Tim Berners-Lee** in 1989 while working at CERN in Geneva, Switzerland. He also wrote the very first *Browser* (called WorldWideWeb, later renamed Nexus to avoid confusion), a software to navigate over the Internet.

The Web was originally meant to transfer documents written in *Hypertext Markup Laguage* (HTML) called Webpages. Multiple Webpages sharing a common *domain name* make up a Website. Resources are stored in computers running *web servers*, which are the programs that respond to resource requests.

<!-- https://en.wikipedia.org/wiki/World_Wide_Web -->
<!-- https://www.w3.org/People/Berners-Lee/WorldWideWeb.html -->

### HTTP

The HTTP protocol exchanges data through *requests-response* messages.

<!-- https://www.w3.org/Protocols/rfc2616/rfc2616.html -->

#### HTTP Request

A request, or **request-line**, begins with a *method* token, followed by the *request uri* and the *protocol version*. All these elements are separated by a space character.

Example:

```http
GET http://www.example.com/index.html HTTP/1.1
```

#### HTTP Response

After receiving and interpreting a request message, a server responds with an HTTP response message. A response message can contain many informations, but at least the first line, called the **status-line**, consists of the *protocol version*, the 3-digit integer *status code*, followed by the status *reason phrase*. Elements also separated by a space.

Example:

```http
HTTP/1.1 200 OK
```

#### HTTP Status Code

The first digit of the status code defines the *class of response*. The last two are intended to add further information, they don't have any categorization role.

Possible classes of response:

- `1XX`: *Informational*, request received, continuing process.
- `2XX`: *Successful*, the action was successfully received, understood, and accepted.
- `3XX`: *Redirection*, further action must be taken in order to complete the request.
- `4XX`: *Client Error*, the request contains bad syntax or cannot be fulfilled.
- `5XX`: *Server Error*, the server failed to fulfill an apparently valid request.

Example:

```http
HTTP/3.0 505 HTTP Version not supported
```

<!-- https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.1.1 -->

#### Uniform Resourse Identifier

Example:

```uri
https://www.example.com.uy:80/path/src?key=value#frag
```

Components:

```txt
https:// ............................................ = Scheme
https://www.example.com.uy:80/path/src?key=value#frag = URI, URL
        www ......................................... = Subdomain
        www.example.com.uy .......................... = Host
        www.example.com.uy:80 ....................... = Authority
        www.example.com.uy:80/path/src?key=value#frag = URI
           .example ................................. = Domain
                   .com ............................. = TLD
                       .uy .......................... = ccTLD
                          :80 ....................... = Port
                             /path/src .............. = Path
                             /path/src?key=value#frag = URI, URN
                                      ?key=value .... = Query
                                                #frag = Fragment
```

Terminology:

- *TLD*: Top-level Domain.
- *ccTLD*: Country Code Top-level Domain.
- *URL*: Uniform Resource Locator.
- *URN*: Uniform Resource Name.

### Browsers

#### Browser Engines

Browser|Rendering engine|JavaScript engine
---|---|---
**Chrome**|Blink|V8
**Edge**|EdgeHTML/Blink & WebKit (iOS)|Chakra
**Firefox**|Gecko|SpiderMonkey
**IE**|Trident|Chakra
**Opera**|Blink|V8
**Safari**|WebKit|Nitro
**Brave**|Blink & WebKit (iOS)|V8

Notes:

- Blink comes from a Webkit library called WebCore, forked by Google in 2013.
- Since 2019, Edge uses Blink (still being WebKit on iOS).
