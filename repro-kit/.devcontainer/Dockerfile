# Dev container with R + Python + geospatial system libs
FROM rocker/r-ver:4.5.1

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \    python3 python3-pip python3-venv \    gdal-bin libgdal-dev libgeos-dev libproj-dev libudunits2-dev \    libcurl4-openssl-dev libxml2-dev libssl-dev \    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install --upgrade pip && \    python3 -m pip install -r /tmp/requirements.txt

RUN R -q -e 'install.packages("renv", repos="https://cloud.r-project.org")'
