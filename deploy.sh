#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Usage: $0 <commit-message>\n"
  exit 0
fi

npm run --prefix ../web clean
npm run --prefix ../web build

rm -rf ../curated.github.io/*.{css,html,ico,js}
cp ../web/dist/* ../curated.github.io/
rm -rf ../curated.github.io/*.map

git commit -v -m "$1"
git push origin master
