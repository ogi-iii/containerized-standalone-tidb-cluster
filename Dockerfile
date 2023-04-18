FROM redhat/ubi8:8.7

ARG version=7.0.0
ARG pd=1
ARG tidb=1
ARG tikv=1
ARG tiflash=1

ENV VERSION=$version
ENV PD=$pd
ENV TIDB=$tidb
ENV TIKV=$tikv
ENV TIFLASH=$tiflash

RUN dnf update -y
RUN dnf upgrade -y

COPY ./scripts/install_tiup.sh /usr/local/bin/

RUN source /usr/local/bin/install_tiup.sh
ENV PATH=/root/.tiup/bin:$PATH

COPY ./scripts/startup_tidb_cluster.sh /usr/local/bin/

ENTRYPOINT /usr/local/bin/startup_tidb_cluster.sh $VERSION $PD $TIDB $TIKV $TIFLASH
