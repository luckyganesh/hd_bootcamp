import chisel3._
import firrtl.{ExecutionOptionsManager, HasFirrtlOptions}

class Dff extends Module {
  val io = IO(new Bundle{
    val in = Input(UInt(1.W))
    val out = Output(UInt(1.W))
  })

  io.out := RegNext(io.in)
}


object Dff extends App {
  Driver.execute(args,() => new Dff())
}