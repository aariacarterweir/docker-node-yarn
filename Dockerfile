# Extend the latest alpine linux image
FROM alpine:latest

# Update
RUN apk update

# Install apk packages
RUN apk add \
    nodejs \
    yarn \
    git \
    openssh-client

# Possibly uneccessary, but for a while the alpine yarn package was out of date.
# This will (hopefully) ensure that doesn't happen again
RUN yarn set version latest

# Set env var to define this as being a docker container
ENV BUILD_ENV docker

# Set work dir to source
WORKDIR /source/

# Set Entrypoint
ENTRYPOINT ["sh"]
