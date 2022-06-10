defmodule Cal do
  def sum(data), do: Calable.sum(data)
end

defprotocol Calable do
  def sum(data)
end

defimpl Calable, for: List do
  def sum(list), do: do_sum(list, 0)

  defp do_sum([], total), do: total
  defp do_sum([ head | tail ], total), do: do_sum(tail, total + head)
end

defimpl Calable, for: Tuple do
  def sum(tuple), do: tuple |> Tuple.to_list() |> Calable.sum()
end
