# Extend the latest ubuntu image
FROM alpine:latest

# Update
RUN apk update

# Install apk packages
RUN apk add \
    nodejs \
    yarn

# Set work dir to source
WORKDIR /source/

# Set Entrypoint
ENTRYPOINT ["sh"]
