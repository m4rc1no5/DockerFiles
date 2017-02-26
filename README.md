# DockerImages

This repo contains docker images useful in my projects.

## Images

- System
- Postgres (from System)
- WildFly 10.1.0.Final (from System)

### Run WildFly

```bash
cd wildfly10
./install.sh
./run.sh
```

### Execute an interactive bash shell on the container

```bash
docker exec -it {CONTAINER_ID} bash
```