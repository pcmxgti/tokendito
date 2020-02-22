FROM python:3-slim-buster
RUN apt-get update \
      && pip install tokendito==1.0.1 \
      && groupadd tokendito \
      && useradd --no-log-init --create-home --gid tokendito tokendito \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*
USER tokendito
ENTRYPOINT ["tokendito"]
CMD ["--help"]
