FROM alpine:3.11 AS alpine
RUN apk add --no-cache curl

FROM r.j3ss.co/img AS img
COPY --from=alpine /usr/bin/curl /usr/bin/curl
ENTRYPOINT [ "/bin/sh" ]