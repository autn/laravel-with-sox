# The FROM instruction sets the Base Image for subsequent instructions.
# As such, a valid Dockerfile must have FROM as its first instruction.
FROM toancong/phpup:2

# The MAINTAINER instruction allows you to set the Author field of the generated images.
MAINTAINER Au Truong Ngoc <autk08@gmail.com>

# The ENV instruction sets the environment variable <key> to the value <value>.
# This value will be in the environment of all “descendant” Dockerfile commands and can be replaced inline in many as well.
ENV FFMPEG_VERSION=4.1

RUN apk update
RUN apk add flac
RUN apk add sox

EXPOSE 80
