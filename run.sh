#!/bin/bash
if [ -f add-time.csv ]; then
  rm add-time.csv
fi
for i in {1..100}; do
  A=$(node add-fn.js | egrep -o [0-9]+\.[0-9]+)
  B=$(node add-inline.js | egrep -o [0-9]+\.[0-9]+)
  C=$(node add-wasm.mjs | egrep -o [0-9]+\.[0-9]+)
  echo "$A; $B; $C" >> add-time.csv
done

if [ -f sub-time.csv ]; then
  rm sub-time.csv
fi
for i in {1..100}; do
  A=$(node sub-fn.js | egrep -o [0-9]+\.[0-9]+)
  B=$(node sub-inline.js | egrep -o [0-9]+\.[0-9]+)
  C=$(node sub-wasm.mjs | egrep -o [0-9]+\.[0-9]+)
  echo "$A; $B; $C" >> sub-time.csv
done

