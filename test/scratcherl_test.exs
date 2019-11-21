defmodule ScratcherlTest do
  use ExUnit.Case
  doctest Scratcherl

  test "greets the world" do
    assert Scratcherl.hello() == :world
  end
end
