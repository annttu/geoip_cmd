#!/bin/bash

mkdir ${HOME}/.geoip/ 2> /dev/null

wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz -O /tmp/geoip_city.dat.gz || exit 1
gunzip /tmp/geoip_city.dat.gz || exit 1
mv /tmp/geoip_city.dat ${HOME}/.geoip/city.dat

wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz -O /tmp/geoip_country.dat.gz || exit 1
gunzip /tmp/geoip_country.dat.gz || exit 1
cp /tmp/geoip_country.dat ${HOME}/.geoip/country.dat
