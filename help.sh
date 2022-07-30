# Build docker image
docker build -t mkdocs .

 # Docker run
docker run -t --rm -d -v /Users/ipavlovskii/PycharmProjects/docker-sampl/:/project --name mkdocs-container mkdocs
mkdocs build -f /project/blog/src/mkdocs.yml
# Open shell mode
docker exec -it mkdocs-container bash

mkdocs build -c -f /project/blog/src/mkdocs.yml
cp -r /project/blog/src/site/* /project | rm -rf /project/blog/src/site

cp -r ./blog/src/site/* .
rm -rf ./blog/src/site

mv blog/src/site blog
rm -rf blog/site && mv /blog/src/site /blog