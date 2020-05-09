FROM golang:1.14 as builder
ENV GO111MODULE="on"
RUN go get -v -u -d github.com/golang-migrate/migrate/v4/cmd/migrate@v4.11.0 \
    && cd /go/pkg/mod/github.com/golang-migrate/migrate/v4@v4.11.0/cmd/migrate \
    && go build -tags 'postgres' -ldflags="-X main.Version=v4.11.0" -o /go/bin/migrate-postgres

FROM golang:1.14
COPY --from=builder /go/bin /go/bin
