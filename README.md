# devtools

Clone devtools into `$GOPATH`

```
mkdir -p $GOPATH/src/github.com/curated && cd $_
git clone git@github.com:curated/devtools.git
```

Setup curated top-level directory with `.editorconfig`

```
cd $GOPATH/src/github.com/curated/devtools
make link
```

Clone other curated repositories

```
make pull
```

Run docker-compose for local development and testing

```
make dev
```
