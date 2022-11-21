mkdocs build -c -f blog/src/mkdocs.yml
cp -r ./blog/src/site/* .
rm -rf ./blog/src/site