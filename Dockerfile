FROM node:8

LABEL maintainer="Stephen Afam-Osemene <stephenafamo@gmail.com>"

RUN npm install -g git+https://github.com/ramitos/jsctags.git 

# ------------------------------------------
# Copy custom commands and give appropriate premissions
# ------------------------------------------
COPY exec /docker/exec/
RUN chmod 755 -R /docker/exec

# ------------------------------------------
# Set add the location of executables to the path variable so they can be globally accessed
# ------------------------------------------
ENV PATH="/docker/exec:${PATH}"


