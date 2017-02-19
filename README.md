# Modoboa (WIP! - Use at your own risk)
Mail hosting made simple! http://www.modoboa.org

## Getting started
Please define your admin password, it will be changed on startup. The according default username is `admin`. Please refer to the official [Docs](http://www.modoboa.org) 

```
docker run -d \
    -p 8081:8081 \
    -p 5000:5000 \
    -e ADMIN_PASSWORD=changeme \
    -v /tmp/modoboa:/mailserver \
    --name nexus3 flavioaiello/modoboa
``` 

### Docker compose 
For your convenience use docker compose to start modoboa as shown below:

```
 modoboa:
    image: flavioaiello/modoboa
    environment:
      - ADMIN_PASSWORD=changeme
    ports:
      - 5000:5000
      - 8081:8081
    volumes:
      - /tmp/modoboa:/mailserver
    restart: always
```

## Contribute
If you want to further customize this image, please feel free to contribute.



