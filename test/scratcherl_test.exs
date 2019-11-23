defmodule ScratcherlTest do
  use ExUnit.Case
  doctest Scratcherl

  test "greets the world" do
    assert Scratcherl.hello() == :world
  end

  test "sums it up" do
    assert Scratcherl.sum([]) == 0
    assert Scratcherl.sum([1]) == 1
  end

  test "raises error if a list is not passed in" do
    assert_raise FunctionClauseError, "no function clause matching in Scratcherl.sum/1", fn ->
      Scratcherl.sum(1)
    end

  end

end
