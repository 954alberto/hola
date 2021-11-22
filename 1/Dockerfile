FROM fedora:36 

LABEL maintainer=954alberto@gmail.com

ENV SHA256SUM="ca50936299e2c5a66b954c266dcaaeef9e91b2f5307069b9894048acf3eb5751  litecoin-0.18.1-x86_64-linux-gnu.tar.gz" \
    VERSION="0.18.1"

RUN groupadd --gid 500 -r litecoin && useradd -m --uid 500 -r -g litecoin litecoin

WORKDIR /home/litecoin/

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sfL https://download.litecoin.org/litecoin-${VERSION}/linux/litecoin-${VERSION}-x86_64-linux-gnu.tar.gz -o litecoin-${VERSION}-x86_64-linux-gnu.tar.gz \
 && echo ${SHA256SUM} | sha256sum --check \
 && tar -zx --strip-components=1 -f litecoin-${VERSION}-x86_64-linux-gnu.tar.gz \
 && rm /home/litecoin/litecoin-0.18.1-x86_64-linux-gnu.tar.gz \
 && chown -R litecoin:litecoin /home/litecoin 

USER 500

ENTRYPOINT ["/home/litecoin/bin/litecoind"]
