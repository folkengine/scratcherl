defmodule MyList do
  @moduledoc """
    Documentation for MyList.
  """
  def sum(a, b) do
    a + b
  end

  # def caesar()

  @doc """
    Simple version of Kernel.max/2
  """
  def max(a, b) do
    cond do
      a > b -> a
      b < a -> b
      a == b -> a
    end
  end

  def reduce([]) do
    0
  end

  def reduce([], value, _) do
    value
  end

  def reduce([ head | tail ], value, func) do
    reduce( tail, func.(head, value), func)
  end

  def reduce( [ head | tail ], func) do
    reduce( tail, func.(head, 0), func)
  end

end
