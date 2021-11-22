FROM alpine:3.15

LABEL maintainer=954alberto@gmail.com

RUN adduser -D -u 500 -h /home/tooling tooling tooling

WORKDIR /home/tooling

SHELL ["/bin/ash", "-o", "pipefail", "-c"]
RUN wget -q https://github.com/hadolint/hadolint/releases/download/v2.8.0/hadolint-Linux-x86_64 -O /usr/local/bin/hadolint \
 && chmod +x /usr/local/bin/hadolint \
 && wget -q https://dl.k8s.io/release/v1.22.0/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \ 
 && wget -q https://github.com/aquasecurity/trivy/releases/download/v0.21.0/trivy_0.21.0_Linux-64bit.tar.gz \
 && tar -xf trivy_0.21.0_Linux-64bit.tar.gz -C /usr/local/bin/ \
 && chmod +x /usr/local/bin/trivy \
 && wget -q https://github.com/anchore/grype/releases/download/v0.25.1/grype_0.25.1_linux_amd64.tar.gz \
 && tar -xf grype_0.25.1_linux_amd64.tar.gz -C /usr/local/bin/ \
 && chmod +x /usr/local/bin/grype

USER 500
