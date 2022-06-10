defmodule Util do
  def compose(data, first, second) do
    data
    |> second.()
    |> first.()
  end

  def sum_list(list, total \\ 0), do: do_sum(list, total)

  defp do_sum([head | tail], total) do
    Process.info(self(), :stack_size)
    |> IO.inspect()

    do_sum(tail, total + head)
  end

  defp do_sum([], total), do: total
end
