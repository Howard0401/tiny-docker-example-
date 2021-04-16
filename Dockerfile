FROM golang:1.15-alpine AS build-env
RUN apk add --no-cache git gcc libc-dev
WORKDIR /src
ADD . /src
RUN go build -o tiny-server .

FROM alpine
WORKDIR /app
COPY --from=build-env /src/tiny-server /app/
ENTRYPOINT [ "./tiny-server" ]