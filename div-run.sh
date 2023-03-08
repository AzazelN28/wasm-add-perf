#!/bin/bash
if [ -f div-time.csv ]; then
  rm div-time.csv
fi
for i in {1..100}; do
  A=$(node div-fn.js | egrep -o [0-9]+\.[0-9]+)
  B=$(node div-inline.js | egrep -o [0-9]+\.[0-9]+)
  C=$(node div-wasm.mjs | egrep -o [0-9]+\.[0-9]+)
  echo "$A; $B; $C" >> div-time.csv
done

