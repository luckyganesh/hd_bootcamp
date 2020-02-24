import chisel3._

class Cell(noOfNeighbourCells: Int) extends Module {
  val io = IO(new Bundle {
    val initialState = Input(Bool())
    val currentStateOfNeighbours = Input(Vec(noOfNeighbourCells, Bool()))
    val initialize = Input(Bool())
    val currentState = Output(Bool())
  })

  private val presentState = RegInit(false.B)

  io.currentState := presentState

  private val aliveCells: UInt = io.currentStateOfNeighbours.count(n => n)

  val nextState = Mux(aliveCells === 2.U, presentState, aliveCells === 3.U)

  when(io.initialize) {
    presentState := io.initialState
  }.otherwise {
    presentState := nextState
  }
}