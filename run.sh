# Build docker image
docker build -t mkdocs .

 # Docker run
docker run -t --rm -d -v /Users/ipavlovskii/PycharmProjects/docker-sampl/blog/src:/project --name mkdocs-container mkdocs
# Open shell mode
docker exec -it mkdocs-container bash

# Execute mkdocs rebuild
  # in docker
  cd project
  mkdocs build

mv blog/src/site blog
rm -rf blog/site && mv /blog/src/site /blog