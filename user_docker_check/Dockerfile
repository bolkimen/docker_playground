FROM debian:stretch

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

RUN whoami
RUN ls -l
CMD ["cat", "/tmp/secrets.txt"]
