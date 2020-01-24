FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo mkdir /workspace /workspace/vsix
ENV GITPOD_STATIC_PLUGINS=/workspace/vsix

USER root

ARG DEBIAN_FRONTEND=noninteractive

RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -; \
    add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" \
    && apt-get update \
    && apt-get install -y code
