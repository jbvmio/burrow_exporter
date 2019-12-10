FROM golang:1.13-alpine AS builder

RUN apk --no-cache add git make

WORKDIR /src/burrow_exporter
COPY . .
RUN make build

FROM busybox
LABEL maintainer "Jimmy Bonds <jbonds@jbvm.io>"

ENTRYPOINT ["burrow_exporter"]

COPY --from=builder /etc/ssl/certs /etc/ssl/certs
COPY --from=builder /src/burrow_exporter/burrow_exporter /usr/local/bin/
