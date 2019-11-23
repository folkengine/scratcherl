defmodule MyListTest do
  use ExUnit.Case
  doctest MyList

  def sum(a, b) do
    a + b
  end

  test "Empty list returns zero" do
    assert MyList.reduce([]) == 0
  end

  test "Empty list and value returns value" do
    assert MyList.reduce([], 5, nil) == 5
  end

  test "sum function returns sum" do
    assert MyList.reduce([1, 2, 2], &sum/2) == 5
  end

  test "sum with bad data throws ArithmeticError" do
    assert_raise ArithmeticError, "bad argument in arithmetic expression", fn ->
      assert MyList.reduce([:asd, 2, 2], &sum/2) == 5
    end
  end

  test "sum with weird data throws FunctionClauseError" do
    assert_raise FunctionClauseError, "no function clause matching in MyList.reduce/2", fn ->
      assert MyList.reduce(:asd, &sum/2) == 5
    end
  end
end