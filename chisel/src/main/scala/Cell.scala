import chisel3._

class Cell(noOfNeighbourCells: Int) extends Module {
  val io = IO(new Bundle {
    val initialState = Input(Bool())
    val currentStateOfNeighbours = Input(Vec(noOfNeighbourCells, Bool()))
    val enable = Input(Bool())
    val currentState = Output(Bool())
  })

  private val presentState = RegInit(false.B)

  io.currentState := presentState

  private def numberOfAliveNeighbours(): UInt = io.currentStateOfNeighbours.count(n => n)

  private def getNextState(): Bool = {
    val numberOfNeighboursAlive = numberOfAliveNeighbours()
    Mux(numberOfNeighboursAlive === 2.U, presentState, numberOfNeighboursAlive === 3.U)
  }

  when(io.enable) {
    presentState := getNextState()
  }.otherwise {
    presentState := io.initialState
  }
}