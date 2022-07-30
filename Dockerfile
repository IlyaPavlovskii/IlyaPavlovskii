FROM python
COPY . .
RUN chmod +x mkdocs_install.sh
RUN chmod +x run.sh
RUN ./mkdocs_install.sh
RUN ./run.sh