# mattermost-pgloader-docker

pgloader Docker image to be used for migrating Mattermost MySQL database to PostgreSQL.

An example command given below to exemplify how the image could be used.

```bash
docker run -it --rm -v $(pwd):/home/migration --network="host" mattermost-pgloader pgloader migration.load > migration.log
```

This command will start a Docker container from the mattermost-pgloader image with following options:

- It will mount the current host directory `$(pwd)` to `/home/migration` inside the container.
- It will use the host's network stack to access databases.
- It will run `pgloader` with `migration.load` as the configuration inside the container.
- It will redirect the output of the pgloader command to a file named `migration.log` on the host.
- The container to be run interactively, but it will be removed automatically when the command completes.

You can find this container on Dockerhub at: https://hub.docker.com/r/mattermost/mattermost-pgloader/
