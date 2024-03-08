FROM perl:5.38
LABEL maintainer="Hauke D <haukex@zero-g.net>"
LABEL org.opencontainers.image.source=https://github.com/haukex/docker-perl-author-tests

COPY cpanfile /tmp/

RUN cd /tmp && cpanm --installdeps .

CMD ["/bin/bash"]
