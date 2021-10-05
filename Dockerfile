FROM golang:1.17

WORKDIR /usr/src/hello

RUN go mod init example/user/hello

COPY src/hello/hello.go .

RUN go install example/user/hello

# RUN hello
# ENTRYPOINT ["hello"]

# docker build -t andgrande/codeeducation . 
# docker run --rm --name golang -it andgrande/codeeducation
