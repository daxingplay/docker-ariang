FROM vimagick/nginx

RUN set -xe && \
    apk add --no-cache unzip wget && \
    wget -N --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/0.3.0/aria-ng-0.3.0.zip && \ 
    unzip aria-ng-0.3.0.zip && \ 
    rm -rf aria-ng-0.3.0.zip && \
    rm -rf /usr/share/nginx/html && \
    mv aria-ng-0.3.0 /usr/share/nginx/html && \
    apk del unzip wget
