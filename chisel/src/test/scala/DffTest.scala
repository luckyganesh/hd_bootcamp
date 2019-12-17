import chisel3.iotesters._

class DffTest(c: Dff) extends PeekPokeTester(c) {
  step(1)
  poke(c.io.in, 0)
  step(1)
  expect(c.io.out,0)
  poke(c.io.in,1)
  expect(c.io.out,0)
  step(1)
  expect(c.io.out,1)
}

object DffTest extends App {
  Driver(() => new Dff){
    c => new DffTest(c)
  }
}
