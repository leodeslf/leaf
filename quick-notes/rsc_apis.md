# Resource APIs

## WEATHER APIs

Comparative Table

Web | Limit | HTTPS | Key | Example
--- | --- | --- | --- | --- |
weatherapi.com | 1.000.000 mon | free | yes | [current][weather1], [autocomplete][weather2]
openweathermap.org | 1.000.000 mon / 60 minute | free | yes | [current][weather3]

[weather1]:https://api.weatherapi.com/v1/current.json?key=7852cac091704637a1c203137202312&q=London&lang=es
[weather2]:http://api.weatherapi.com/v1/search.json?q={query}&key=7852cac091704637a1c203137202312
[weather3]:https://api.openweathermap.org/data/2.5/weather?appid=b280c897878592322aafe56701248929&lang=sp&units=metric&q=London

## IP-GEOLOCATION APIs

Comparative Table

Web | Limit | HTTPS | Key | Example
--- | --- | --- | --- | --- |
ipdata.co | 1.500 day | Free | Yes | [response][ipgeo1]
ipgeolocation.io  | 1.000 day | Free | Yes | [response][ipgeo2]
ipapi.co | 1.000 day | Free | --- | [response][ipgeo4]
ipinfo.io | 1.000 day | Free | Yes | [response][ipgeo3]
db-ip.com | 1.000 day | Free | --- | [response][ipgeo5]
ip-api.com | 150 min (216.000 day) | Pro | --- | [response][ipgeo6]
ipstack.com | 10.000 mon (~ 330 day) | Pro | Yes | [response][ipgeo7]
geo.ipify.org | 1.000 mon ( ~ 33 day) | Free | Yes | [response][ipgeo8]

[ipgeo1]:https://api.ipdata.co/es?api-key=b3a6e1ab3f14ca073da324e9814030521bc2c89ce233e6bac8a9bdb3
[ipgeo2]:https://api.ipgeolocation.io/ipgeo?apiKey=15d8e57eb4aa4015bb32a04d73b67b19
[ipgeo3]:https://ipinfo.io/json?token=b5c5035f45214e
[ipgeo4]:https://ipapi.co/json
[ipgeo5]:https://api.db-ip.com/v2/free/self
[ipgeo6]:http://ip-api.com/json/?lang=es
[ipgeo7]:http://api.ipstack.com/check?access_key=8967f4ba80a96dcf265418c804b66688
[ipgeo8]:https://geo.ipify.org/api/v1?apiKey=at_vGN3FxAsUgZKcb8APTMaDeNC4F6aR
