import chisel3._

class Shift_register extends Module {
  val io = IO(new Bundle{
    val input = Input(UInt(1.W))
    val output = Output(Vec(4,UInt(1.W)))
  })

  io.output(0) := RegNext(io.input,0.U)
  io.output(1) := RegNext(io.output(0),0.U)
  io.output(2) := RegNext(io.output(1),0.U)
  io.output(3) := RegNext(io.output(2),0.U)
}
