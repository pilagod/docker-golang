# Docker Image for Golang

Based on Golang images from [golang](https://hub.docker.com/_/golang), with [golang-migrate/migrate](https://github.com/golang-migrate/migrate) installed.

## Build

```sh
$ make build GO=1.15 MIGRATE=4.14.1 TAG=pilagod/golang:1.15-migrate4.14.1
```
