import fs from 'fs'

async function main() {
  const assembly = await WebAssembly.instantiate(fs.readFileSync('sub.wasm'))
  const { module, instance } = assembly
  const buffer = new Int32Array(
    instance.exports.memory.buffer,
    instance.exports.operations.value,
    2048 * 12
  )
  for (let i = 0; i < 2048 * 12; i++) {
    buffer[i] = (Math.random() * 0xFFFF)
  }
  console.time('compute')
  instance.exports.compute()
  console.timeEnd('compute')
}

main()
