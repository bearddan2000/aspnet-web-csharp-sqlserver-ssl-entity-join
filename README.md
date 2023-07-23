# aspnet-web-csharp-sqlserver-ssl-entity-join

## Description
An asp.net using a single data model
with entity (ef6). This is using c#
as the code behind. All my asp.net
repos use the MVC pattern

Sql server uses self-signed ssl.

## Tech stack
- iproute2
- supervisor
- ca-certificates-mono
- fsharp
- mono-vbnc
- nuget
- referenceassemblies-pcl
- mono-fastcgi-server4
- nginx
- nginx-extras
- tar
- mvc 5
- entity 6
- .net framework 4.7

## Docker stack
- alpine:edge
- mono:latest
- mcr.microsoft.com/mssql/server:2017-latest-ubuntu

## To run
`sudo ./install.sh -u`
Availble at http://localhost

## To stop
`sudo ./install.sh -d`

## To see help
`sudo ./install.sh -h`
