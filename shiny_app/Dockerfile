FROM rocker/rstudio
RUN apt-get update \
    && apt-get -y install libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libz-dev \
    libgit2-dev \
    tar
COPY . /shiny_app
RUN R -e "install.packages(c('shiny', 'httr', 'jsonlite'))"
EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/shiny_app/', port = 3838L, host = '0.0.0.0')"]
