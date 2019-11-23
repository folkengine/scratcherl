defmodule MyListTest do
  use ExUnit.Case
  doctest MyList

  test "Empty list returns zero" do
    assert MyList.reduce([]) == 0
  end

  test "Empty list and value returns value" do
    assert MyList.reduce([], 5, nil) == 5
  end

  test "sum function returns sum" do
    assert MyList.reduce([1, 2, 2], &MyList.sum/2) == 5
  end

  test "sum with bad data throws ArithmeticError" do
    assert_raise ArithmeticError, "bad argument in arithmetic expression", fn ->
      assert MyList.reduce([:asd, 2, 2], &MyList.sum/2) == 5
    end
  end

  test "sum with weird data throws FunctionClauseError" do
    assert_raise FunctionClauseError, "no function clause matching in MyList.reduce/2", fn ->
      assert MyList.reduce(:asd, &MyList.sum/2) == 5
    end
  end

  test "max function returns sum" do
    assert MyList.reduce([1, 2, 2], &MyList.max/2) == 2
    assert MyList.reduce([1, 2, 234], &MyList.max/2) == 234
  end

  @tag :skip
  test "caesar function returns sum" do
    assert MyList.reduce('z', &MyList.sum/2) == 5
  end
end