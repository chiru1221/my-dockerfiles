ARG TAG=3.8.7-openjdk-18
FROM maven:$TAG

ARG UID=1000
ARG GID=1000
ARG USER=chiru1221
ARG GROUP=chiru1221
RUN groupadd -g $GID $GROUP
RUN useradd -g $GID -u $UID -m $USER

USER $USER

ENTRYPOINT [ "/bin/bash" ]