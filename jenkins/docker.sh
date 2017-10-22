docker build . -t teach-documentation
docker run \
  -v "$PWD/_book/":/app/ \
  teach-documentation