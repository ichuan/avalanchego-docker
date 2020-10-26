# avalanchego-docker
Dockerfile for avalanchego


# Building

```bash
docker build -t avalanchego .
```

# Running

```bash
# block dir
mkdir data
docker run --rm -itd --name avax -p 9650:9650 -v `pwd`/data:/root/.avalanchego avalanchego
```


# Using pre-built docker image

Using automated build image from <https://hub.docker.com/r/mixhq/avalanchego/>:

```bash
docker run --rm -itd --name avax -p 9650:9650 -v `pwd`/data:/root/.avalanchego avalanchego
```
