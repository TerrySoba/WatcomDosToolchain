FROM alpine:3.14 as builder

RUN wget https://github.com/open-watcom/open-watcom-v2/releases/download/Current-build/ow-snapshot.tar.xz
RUN tar -xvf ow-snapshot.tar.xz

FROM alpine:3.14

RUN apk add --update \
    make \
  && rm -rf /var/cache/apk/*

RUN mkdir /opt/opwatcom
WORKDIR /opt/opwatcom

COPY --from=builder binl /opt/opwatcom/binl
COPY --from=builder eddat /opt/opwatcom/eddat
COPY --from=builder h /opt/opwatcom/h
COPY --from=builder lib286 /opt/opwatcom/lib286
COPY --from=builder lib386 /opt/opwatcom/lib386


ENV WATCOM=/opt/opwatcom
ENV PATH=$WATCOM/binl:$PATH
ENV EDPATH=$WATCOM/eddat
ENV INCLUDE=$WATCOM/h
