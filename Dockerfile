FROM gcr.io/distroless/static-debian13:nonroot

ARG TARGETARCH

WORKDIR /app

COPY dist/hubproxy-linux-${TARGETARCH} ./hubproxy
COPY dist/config.toml ./config.toml

ENTRYPOINT ["/app/hubproxy"]
