FROM ubuntu:xenial

RUN apt-get update -y -qq \
    && apt-get -y install --no-install-recommends \
      ghostscript \
      lmodern \
      make \
      texlive \
      texlive-fonts-extra \
      texlive-fonts-recommended \
      texlive-lang-cjk \
      texlive-lang-japanese \
      texlive-latex-extra \
    && kanji-config-updmap-sys ipaex \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME /paper
WORKDIR /paper

ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
