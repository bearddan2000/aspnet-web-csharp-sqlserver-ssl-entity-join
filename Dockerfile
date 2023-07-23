FROM mono:latest

LABEL maintainer="Marcos Junior <junalmeida@gmail.com>"

RUN apt-get update \
  && apt-get install -y \
      iproute2 \
      supervisor \
      ca-certificates-mono \
      fsharp \
      mono-vbnc \
      nuget \
      referenceassemblies-pcl \
      mono-fastcgi-server4 \
      nginx \
      nginx-extras \
      tar \
      p7zip-full \
  && rm -rf /var/lib/apt/lists/* /tmp/* \
  && echo "daemon off;" | cat - /etc/nginx/nginx.conf > temp \
  && mv temp /etc/nginx/nginx.conf \
  && sed -i -e 's/www-data/root/g' /etc/nginx/nginx.conf

COPY nginx/ /etc/nginx/
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY bin/ /var/www/sample-app/

WORKDIR /var/www/sample-app

RUN cat main.tar.gz-part-* > main.tar.gz \
  && tar -xf main.tar.gz \
  && chown -R www-data:www-data main \
  && chmod -R +x main \
  && cp -rf main/CSharpSqlEntity/CSharpSqlEntity/* .

EXPOSE 80

ENTRYPOINT [ "/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf" ]
