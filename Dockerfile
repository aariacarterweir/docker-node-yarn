# Extend the latest ubuntu image
FROM alpine:latest

# Set work dir to source
WORKDIR /source/

# Update
RUN apk update

# Install apk packages
RUN apk add \
    nodejs \
    yarn

# ADD NODE_MODULES/.bin to $PATH
RUN export PATH="$(yarn bin):${PATH}"

# CLEAN UP
RUN rm /var/cache/apk/*
RUN rm -f package*
