function sub(a, b) {
  return a - b
}

function compute(buffer) {
  for (let i = 0; i < size; i += 3) {
    buffer[i + 2] = sub(buffer[i + 0], buffer[i + 1]);
  }
}

const size = 2048 * 12
const buffer = new Int32Array(size)
for (let i = 0; i < size; i++) {
  buffer[i] = (Math.random() * 0xFFFF)
}

console.time("compute")
compute(buffer)
console.timeEnd("compute")
