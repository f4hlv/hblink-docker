## PROJECT: Open Source HomeBrew Repeater Proctol Client/Master. ##
lien: https://github.com/HBLink-org

# HBlink #

# Installer Docker
```console
$ curl -fsSL get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
```

# Installer docker-compose
```console
$ sudo apt install docker-compose
```

## Contruire et demarrer un serveur HBlink + HBmonitor
```console
$ docker-compose up -d
```
## Volume
- `./hblink.cfg:/opt/hblink3/hblink.cfg` Configuration général
- `./rules.py:/opt/hblink3/rules.py` Règles de routage des masters
- `./config.py:/opt/HBmonitor/config.py` Configuration de HBmonitor
## Log HBlink (500 dernières lignes)
```console
$ docker-compose logs -f --tail=500 hblink 
```
# Mise à jour
```console
$ docker-compose build --no-cache
$ docker-compose up -d
```

