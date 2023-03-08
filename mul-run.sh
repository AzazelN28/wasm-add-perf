#!/bin/bash
if [ -f mul-time.csv ]; then
  rm mul-time.csv
fi
for i in {1..100}; do
  A=$(node mul-fn.js | egrep -o [0-9]+\.[0-9]+)
  B=$(node mul-inline.js | egrep -o [0-9]+\.[0-9]+)
  C=$(node mul-wasm.mjs | egrep -o [0-9]+\.[0-9]+)
  echo "$A; $B; $C" >> mul-time.csv
done

