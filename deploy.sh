#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

echo > .nojekyll


git init
git checkout -B main
git add -A
git commit -m 'deploy'
git push -f git@github.com:ianherri/ianherri.github.io.git main
cd -