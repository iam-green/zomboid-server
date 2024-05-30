# Project Zomboid Dedicated Server
> Easy and fast Project Zomboid Dedicated Server
>

## Docker

### Setup Command
```bash
docker create -it -name zomboid-server \
  -p 8766:8766/udp -p 8767:8767/udp -p 16261:16261/udp -p 16262:16262/udp \
  ghcr.io/past2l/zomboid-server
```

### Environments
|Environment Name|Description|Default Value|
|:-:|:-:|:-:|
|TZ|Set Timezone|`Asia/Seoul`|
|RAM|Set Project Zomboid Server RAM|`8192M`|
|SERVER_NAME|Set Project Zomboid Server Name|`pzserver`|
|ADMIN_USERNAME|Set Project Zomboid Admin Username|`root`|
|ADMIN_PASSWORD|Set Project Zomboid Admin Password|`changeme`|
|DATA_DIRECTORY|Set Project Zomboid Data Directory|`/data`|
|STEAM_DIRECTORY|Set Steam Directory|`/steam`|
|ZOMBOID_DIRECTORY|Set Project Zomboid File Directory|`/zomboid`|