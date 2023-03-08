# Sumas

## Español 

Este código realiza 2048 sumas utilizando diferentes métodos:

- `inline`: el bucle se encuentra dentro del contexto principal del programa.
- `fn`: el bucle se encuentra dentro de una función `compute`.
- `wasm`: el bucle se encuentra dentro de un módulo de WebAssembly.

Para obtener los resultados sólo es necesario correr `run.sh`.

Los resultados se guardan en `time.csv` y aquí hay una gráfica comparando 100
ejecuciones de los diferentes métodos:

![Sumas](images/add.svg)
![Restas](images/sub.svg)
![Multiplicaciones](images/mul.svg)
![Divisiones](images/div.svg)

## English

This code performs 2048 additions using different methods:

- `inline`: the loop is inside the main context of the program.
- `fn`: the loop is inside a `compute` function.
- `wasm`: the loop is inside a WebAssembly module.

To obtain the results it is only necessary to run `run.sh`.

The results are saved in `time.csv` and here is a graph comparing 100 
executions of the different methods:

![Additions](images/add.svg)
![Subtractions](images/sub.svg)
![Multiplications](images/mul.svg)
![Divisions](images/div.svg)

Made with :heart: by [AzazelN28](https://github.com/azazeln28)
