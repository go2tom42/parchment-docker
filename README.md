# parchment-docker

## Usage

### docker-compose


```yaml
version: "2.1"
services:
  parchment:
    image: ghcr.io/go2tom42/parchment-docker:latest
    container_name: parchment
    volumes:
      - /path/to/story/files:/html/files
    ports:
      - 80:80
    restart: unless-stopped
```


To load story from url  

https://localhost:80/?story=files/infidel-r22-s830916.z3
