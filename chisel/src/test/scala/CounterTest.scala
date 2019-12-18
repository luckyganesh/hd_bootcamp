import chisel3.iotesters.{Driver, PeekPokeTester}

class CounterTest(c: Counter) extends PeekPokeTester(c) {
  expect(c.io.out, 0)
  step(1)
  expect(c.io.out,1)
  step(1)
  expect(c.io.out,2)
  step(1)
  expect(c.io.out,3)
  step(1)
  expect(c.io.out,4)
  step(1)
  expect(c.io.out,5)
  step(1)
  expect(c.io.out,6)
  step(1)
  expect(c.io.out,7)
  step(1)
  expect(c.io.out,0)
}

object CounterTest extends App {
  Driver(() => new Counter){
    c => new CounterTest(c)
  }
}
