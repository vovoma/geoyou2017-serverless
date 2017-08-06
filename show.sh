#!/bin/sh

TOKEN=$(cat .token)
POINT=`cat example.json | jq -r '[.x, .y] | @csv'`
BUFFER=$(serverless invoke -f buffer --path example.json | jq -c '.geometry')
GEO=$(echo $BUFFER | python -c "import urllib,sys;print urllib.quote(sys.stdin.read())")

open "https://api.mapbox.com/v4/mapbox.light/geojson($GEO)/$POINT,10/1000x1000.png?access_token=$TOKEN"
