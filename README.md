# parchment-docker
https://github.com/curiousdannii/parchment  
https://github.com/emikulic/darkhttpd  

## Info  
supports blorb (EXT blb & blorb), hugo (EXT hex), glulx (EXT gblorb, glb, & ulx), tads (EXT gam & t3), zcode (EXT zblorb, zlb, z3, z4, z5, & z8)


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
### docker-cli
```shell
docker run -d --name parchment -p 80:80 -v /path/to/story/files:/html/files --restart unless-stopped ghcr.io/go2tom42/parchment-docker:latest	
```
To load story from url  

https://localhost:80/?story=files/infidel-r22-s830916.z3  
or  
https://localhost:80/?story=https://eblong.com/infocom/gamefiles/hitchhiker-invclues-r31-s871119.z5

