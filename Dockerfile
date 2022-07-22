FROM python
COPY . .
RUN chmod +x mkdocs.sh
RUN ./mkdocs.sh