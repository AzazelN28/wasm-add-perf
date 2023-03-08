all:
	clang -target wasm32 -Wl,--export-all -Wl,--no-entry -nostdlib -O3 -o add.wasm add.c
	clang -target wasm32 -Wl,--export-all -Wl,--no-entry -nostdlib -O3 -o sub.wasm sub.c
	clang -target wasm32 -Wl,--export-all -Wl,--no-entry -nostdlib -O3 -o mul.wasm mul.c
	clang -target wasm32 -Wl,--export-all -Wl,--no-entry -nostdlib -O3 -o div.wasm div.c
