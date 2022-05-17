FROM alpine:3.15 AS build-stage

RUN apk add --no-cache gcc make musl-dev nodejs npm git curl && \
    git clone https://github.com/emikulic/darkhttpd \
    && cd darkhttpd \
    && make CFLAGS=-static \
    && cd .. \
    && git clone https://github.com/curiousdannii/parchment \
    && cd parchment \
    && git submodule update --init --recursive \
    && npm install

FROM scratch

COPY --from=build-stage /darkhttpd/darkhttpd /darkhttpd
COPY --from=build-stage /parchment/dist /html/dist
COPY --from=build-stage /parchment/index.html /html/index.html

ENTRYPOINT ["/darkhttpd"]

EXPOSE 80

CMD ["/html", "--port", "80"]
