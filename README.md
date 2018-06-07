# GMan API

A JSON microservice for [GMan](https://github.com/benbalter/gman).

## Usage

`GET /?q=foo@whitehouse.gov`

Response:

```json
{
   "country":{
      "name":"United States of America",
      "numeric":"840",
      "alpha2":"US",
      "alpha3":"USA",
      "calling":"+1",
      "continent":"NA",
      "iban":null,
      "currency":"USD"
   },
   "domain":{
      "name":"whitehouse.gov",
      "tld":"gov",
      "sld":"whitehouse",
      "trd":null
   },
   "valid?":true,
   "email?":true,
   "type":"federal",
   "state?":false,
   "district?":false,
   "cog?":false,
   "city?":false,
   "federal?":true,
   "county?":false,
   "state":"DC",
   "city":"Washington",
   "agency":"Executive Office of the President",
   "dotgov?":true
}
```

You can optionally pass a `callback` parameter as well, for JSONP responses

## Developing locally

`script/bootstrap`
`script/server`
`open localhost:4567`
