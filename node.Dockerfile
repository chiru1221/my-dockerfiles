ARG TAG=20.0.0
FROM node:$TAG

RUN usermod -u 1001 node
RUN groupmod -g 1001 node
ARG UID=1000
ARG GID=1000
ARG USER=chiru1221
ARG GROUP=chiru1221
RUN groupadd -g $GID $GROUP
RUN useradd -g $GID -u $UID -m $USER

USER $USER
