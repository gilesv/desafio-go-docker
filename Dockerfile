FROM golang:alpine3.13

WORKDIR /go/src/app
COPY /src .

RUN go build main.go

FROM scratch
COPY --from=0 /go/src/app/main .

CMD ["./main"]
