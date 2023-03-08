#!/bin/bash
touch time.csv
for i in {1..100}; do
  A=$(node add-fn.js | egrep -o [0-9]+\.[0-9]+)
  B=$(node add-inline.js | egrep -o [0-9]+\.[0-9]+)
  C=$(node add-wasm.mjs | egrep -o [0-9]+\.[0-9]+)
  echo "$A; $B; $C" >> time.csv
done

