docker build . -t teach-documentation
docker run \
  -v "$PWD/":/app/ \
  -e RELEASE=$1 \
  teach-documentation