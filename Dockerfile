ARG GO

FROM golang:$GO as builder
ARG MIGRATE
ENV GO111MODULE="on"
RUN go get -v -u -d github.com/golang-migrate/migrate/v4/cmd/migrate@v$MIGRATE \
    && cd /go/pkg/mod/github.com/golang-migrate/migrate/v4@v$MIGRATE/cmd/migrate \
    && go build -tags 'postgres' -ldflags="-X main.Version=v$MIGRATE" -o /go/bin/migrate-postgres

FROM golang:$GO
COPY --from=builder /go/bin /go/bin
