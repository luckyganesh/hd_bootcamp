import chisel3.iotesters.{Driver, PeekPokeTester}
import org.scalatest.{FlatSpec, Matchers}

class CellTest(c: Cell, numberOfAliveNeighbours: Int , initialState: Int, expectedState: Int) extends PeekPokeTester(c) {

  val currentStateOfNeighbours = Seq.fill(numberOfAliveNeighbours){1} ++ Seq.fill(8-numberOfAliveNeighbours){0}

  currentStateOfNeighbours.zipWithIndex.foreach { case (neighbour, index) =>
    poke(c.io.currentStateOfNeighbours(index), neighbour)
  }
  poke(c.io.initialize, 1)
  poke(c.io.initialState, initialState)
  step(1)
  expect(c.io.currentState, initialState)

  poke(c.io.initialize, 0)
  step(1)
  expect(c.io.currentState, expectedState)
}

class CellSpec extends FlatSpec with Matchers {
  behavior of "Cell Spec"

  private def test(noOfNeighbourCells: Int, alives: Int, initial: Int, expected: Int) = {
    Driver(() => new Cell(noOfNeighbourCells)) {
      c => new CellTest(c, alives, initial, expected)
    }
  }

  it should "make alive when three neighbours are alive" in {
    test(8, 3, 0, 1) should be(true)
  }

  it should "ContinueToBeTheSameStateWhenOnlyTwoNeighboursAreAlive" in {
    test(8,2,0,0) should be(true)
    test(8,2,1,1) should be(true)
  }

  it should "DieIfTheNoOfAliveNeighboursAreGreaterThanThree" in {
    Array.range(4, 9).foreach(alives => {
      test(8,alives,0,0) should be(true)
      test(8,alives,1,0) should be(true)
    })
  }

  it should "DieIfTheNoOfAliveNeighboursAreLessThanTwo" in {
    Array.range(0,2).foreach(alives => {
      test(8,alives,0,0) should be(true)
      test(8,alives,1,0) should be(true)
    })
  }
}