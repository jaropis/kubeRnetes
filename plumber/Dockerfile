FROM rocker/rstudio
RUN apt-get update \
    && apt-get -y install libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libz-dev \
    libgit2-dev \
    tar
COPY . /plumber/
RUN R -e "install.packages('plumber')"
EXPOSE 8000

CMD ["R", "-e", "source('/plumber/run_server.R')"]
