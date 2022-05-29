#!/bin/bash
echo "Starting Building the project"
sleep 2
npx tailwindcss -i ./tailwind.css -o ./css/style.css
sleep 2
echo "Finished Building CSS"

rm -R ./dist
mkdir dist

cp -R ./index.html ./dist
echo "Done, Moving index.html"
cp -R ./404.html ./dist
echo "Done, Moving 404.html"
cp -R ./css ./dist/css
echo "Done, Moving CSS"
cp -R ./js ./dist/js
echo "Done, Moving JS"
cp -R ./assets ./dist/assets