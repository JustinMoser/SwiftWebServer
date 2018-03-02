FROM ibmcom/swift-ubuntu:latest
LABEL Justin Moser <justinimoser@gmail.com>
ADD . /app
WORKDIR /app
EXPOSE 8090
USER root
RUN swift build
CMD [".build/release/swift_web_server_app"]