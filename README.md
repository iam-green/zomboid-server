# Project Zomboid Dedicated Server

> Easy and fast Project Zomboid Dedicated Server

## Docker

### Setup Command

```bash
docker create -it -name zomboid-server \
  -p 8766:8766/udp -p 8767:8767/udp -p 16261:16261/udp -p 16262:16262/udp \
  ghcr.io/iam-green/zomboid-server
```

### Environments

| Environment Name  |            Description             | Default Value |
| :---------------: | :--------------------------------: | :-----------: |
|        TZ         |            Set Timezone            | `Asia/Seoul`  |
|        UID        |            Set User ID             |    `1000`     |
|        GID        |            Set Group ID            |    `1000`     |
|        RAM        |   Set Project Zomboid Server RAM   |    `8192M`    |
|    SERVER_NAME    |  Set Project Zomboid Server Name   |  `pzserver`   |
|  ADMIN_USERNAME   | Set Project Zomboid Admin Username |    `admin`    |
|  ADMIN_PASSWORD   | Set Project Zomboid Admin Password |  `changeme`   |
|  DATA_DIRECTORY   | Set Project Zomboid Data Directory |    `/data`    |
|  STEAM_DIRECTORY  |        Set Steam Directory         |   `/steam`    |
| ZOMBOID_DIRECTORY | Set Project Zomboid File Directory |  `/zomboid`   |

## Linux

### Setup Command

```batch
chmod +x ./server && ./server
```

### Options

```
  -h, --help                               Show this help and exit
  -r, --ram <ram_size>                     Select the amount of RAM you want to allocate to the server
  -n, --name <server_name>                 Set the Zomboid server name
  --user, --username <admin_username>      Set the Zomboid Admin Username
  --pass, --password <admin_password>      Set the Zomboid Admin Password
  -d, -dd, --data-directory <directory>    Select a location to store Zomboid data files
  -zd, --zomboid-directory <directory>     Select the path to install the Zomboid Server
  -sd, --steam-directory <directory>       Select the path to install the SteamCMD
  -u, --update                             Update the script to the latest version
```
