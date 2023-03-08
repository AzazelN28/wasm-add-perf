all:
	clang -target wasm32 -Wl,--export-all -Wl,--no-entry -nostdlib -O3 -o add.wasm add.c
