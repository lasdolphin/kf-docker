FROM alpine:latest

RUN apk add --no-cache --update \
    python3 git bash curl


COPY ["jq", "kubectl", "kf", "/usr/local/bin/"]
ADD google-cloud-sdk /usr/local/
ENV PATH /usr/local/google-cloud-sdk/bin:$PATH

