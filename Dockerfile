FROM alpine:latest

RUN apk add --no-cache --update \
    python3 bash curl


COPY ["jq", "kubectl", "kf","docker-credential-gcloud", "gcloud", "gsutil", "/usr/local/bin/"]
COPY builddir/gcloud-lib /usr/local/lib/

