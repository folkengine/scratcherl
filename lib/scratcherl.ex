defmodule Scratcherl do
  @moduledoc """
  Documentation for Scratcherl.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Scratcherl.hello()
      :world

  """
  def hello do
    :world
  end
#
#  ​def​ map([], _func),             ​do​: []
#                                       ​ 	​def​ map([ head | tail ], func), ​do​: [ func.(head) | map(tail, func) ]

  def map([], _func),   do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def sum(args) when is_list(args) do
    case {args} do
      {[]} ->
        0
      {[_ | _]} ->
        1
    end
  end
end
