function div(a, b) {
  return a / b
}

const size = 2048 * 12
const buffer = new Int32Array(size)
for (let i = 0; i < size; i++) {
  buffer[i] = 1 + (Math.random() * 0xFFFF)
}

console.time("compute")
for (let i = 0; i < size; i += 3) {
  buffer[i + 2] = div(buffer[i + 0], buffer[i + 1]);
}
console.timeEnd("compute")
