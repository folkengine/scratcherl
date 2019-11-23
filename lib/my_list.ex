defmodule MyList do
  @moduledoc false

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
