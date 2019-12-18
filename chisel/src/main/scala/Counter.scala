import chisel3._

class Counter extends Module{
  val io = IO(new Bundle{
    val out = Output(UInt(3.W))
  })
  io.out := RegNext(io.out + 1.U,0.U)
}

object Counter extends App {

}