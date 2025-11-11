FROM apache/superset:3.1.0

USER root

# Install shillelagh for Google Sheets support (replaces gsheetsdb)
RUN pip install --no-cache-dir \
    "shillelagh[gsheetsapi]>=1.2.0"

USER superset
