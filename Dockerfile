FROM vimagick/nginx

RUN set -xe && \
    apk add --no-cache unzip wget && \
    wget -N --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/0.3.0/aria-ng-0.3.0.zip && \ 
    mkdir -p /usr/share/nginx/html && \
    unzip -o aria-ng-0.3.0.zip -d /usr/share/nginx/html && \ 
    rm -rf aria-ng-0.3.0.zip && \
    apk del unzip wget
