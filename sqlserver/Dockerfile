FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu

COPY conf /var/opt/mssql

COPY cert/server.crt /etc/ssl/certs
COPY cert/server.key /etc/ssl/private

ENV SA_PASSWORD z!oBx1ab
ENV ACCEPT_EULA Y

COPY bin/ .

CMD /bin/bash ./entrypoint.sh

EXPOSE 1433
