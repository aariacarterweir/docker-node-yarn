# Extend the latest ubuntu image
FROM alpine:latest

# Update
RUN apk update

# Install apk packages
RUN apk add \
    nodejs \
    yarn

# Possibly uneccessary, but for a while the alpine yarn package was out of date.
# This will ensure that doesn't happen again
RUN yarn set version latest

# Set work dir to source
WORKDIR /source/

# Set Entrypoint
ENTRYPOINT ["sh"]
