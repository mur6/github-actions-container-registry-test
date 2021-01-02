FROM python:3.8
ENV DEBIAN_FRONTEND=noninteractive
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
#ENV PIP_TARGET=/usr/local/share/pip-global
#ENV PYTHONPATH=${PYTHONPATH}:${PIP_TARGET}
#ENV PATH=${PATH}:${PIP_TARGET}/bin
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get -y install git iproute2 procps lsb-release
