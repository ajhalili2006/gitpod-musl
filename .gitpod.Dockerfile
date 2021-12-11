FROM alpine:edge

RUN apk add --no-cache musl gcompat curl wget bash python3 nodejs docker doas

RUN curl -o /usr/bin/lama -sSL https://github.com/csweichel/lama/releases/download/v0.3.0/lama_0.3.0_Linux_x86_64 \
    && chmod +x /usr/bin/lama

RUN adduser -u 33333 gitpod \
    && adduser gitpod wheel
    
USER gitpod

RUN doas echo hi mom
