# Running multicontainer shiny application on kubernetes
## Build the containers
`docker build . -t shiny_me -f shiny_app/Dockerfile`

`docker build . -t plumber_me -f plumber/Dockerfile`
