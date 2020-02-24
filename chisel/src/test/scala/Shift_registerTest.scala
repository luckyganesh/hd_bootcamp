import chisel3.Bits
import chisel3.iotesters.{Driver, PeekPokeTester}

class Shift_registerTest(c: Shift_register) extends PeekPokeTester(c) {
  expect(c.io.output,IndexedSeq(BigInt(0),BigInt(0),BigInt(0),BigInt(0)) )
  poke(c.io.input,1)
  step(1)
  expect(c.io.output,IndexedSeq(BigInt(0),BigInt(0),BigInt(0),BigInt(1)))
  step(1)
  expect(c.io.output,IndexedSeq(BigInt(0),BigInt(0),BigInt(1),BigInt(1)) )
  step(1)
  expect(c.io.output,IndexedSeq(BigInt(0),BigInt(1),BigInt(1),BigInt(1)) )
  step(1)
  expect(c.io.output,IndexedSeq(BigInt(1),BigInt(1),BigInt(1),BigInt(1)) )
  poke(c.io.input,0)
  step(1)
  expect(c.io.output,IndexedSeq(BigInt(1),BigInt(1),BigInt(1),BigInt(0)) )
}

object Shift_registerTest extends App {
  Driver(() => new Shift_register){
    c => new Shift_registerTest(c)
  }
}
