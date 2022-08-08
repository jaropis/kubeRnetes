# Running multicontainer shiny application on kubernetes
## Build the containers
`docker build . -t shiny_me:0.1 -f shiny_app/Dockerfile`

`docker build . -t plumber_me:0.1 -f plumber/Dockerfile`

We are tagging with version 0.1 to avoid Always pulling from repo with the `latest` tag.

## Run the cluster locally

`kubectl apply -f deployment_shiny.yml`

`apply -f svc-local_expose_shiny.yml`

`kubectl apply -f pod_plumber.yml`

`kubectl apply -f svc_plumber.yml`
