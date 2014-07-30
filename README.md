# docker-milkode

Dockerized [milkode](https://github.com/ongaeshi/milkode).
Provides full-text search engine for your github repositories, boots up in a few minutes.

## Quick Start

Run docker image:

```bash
$ docker build -t milkode .
$ docker run --rm -i -t -p 9292:9292 -e 'GITHUB_USER=ongaeshi' milkode
```

and open

* http://localhost:9292/ (on Linux)
* http://x.y.z.w:9292/ (on OS X, ``boot2docker ip`` to locate your IP)
