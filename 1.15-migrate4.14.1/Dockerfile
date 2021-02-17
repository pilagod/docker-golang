FROM golang:1.15 as builder
ENV GO111MODULE="on"
RUN go get -v -u -d github.com/golang-migrate/migrate/v4/cmd/migrate@v4.14.1 \
    && cd /go/pkg/mod/github.com/golang-migrate/migrate/v4@v4.14.1/cmd/migrate \
    && go build -tags 'postgres' -ldflags="-X main.Version=v4.14.1" -o /go/bin/migrate-postgres

FROM golang:1.15
COPY --from=builder /go/bin /go/bin
