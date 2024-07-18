# tusker-docker

See: https://github.com/bikeshedder/tusker

Running:
```shell
docker build -t app/tusker . 
docker run --rm -ti app/tusker
```

Masking native binary:
```shell
alias tusker='docker run --rm -ti -v "$(pwd):/app" app/tusker'
```

Use `host.docker.internal` as db `host` instead of `localhost`.