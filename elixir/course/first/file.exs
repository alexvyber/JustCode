defmodule Util do
  def compose(data, first, second) do
    data
    |> second.()
    |> first.()
  end

  def sum_list(list, total \\ 0 ), do: do_sum(list, total )
  defp do_sum([ head | tail ], total) do

    Process.info( self(), :stack_size)
    |> IO.inspect()

    do_sum(tail, total + head)
  end
  defp do_sum([]), do: 0
end

p = """
asdfasdfasdf

asdfasdfasdf

asdf

asdfasdfasdf

asdf asdf sa d fasdf asdf asdf asdf asdf asdf asdf asdjfgajsdfgjashgdf jasdf asdf asdf asdf
"""

Util.compose(p, &Kernel.length/1, &String.split/1)
|> IO.puts()

shit = [1,2,12,23,434]
res = Util.sum_list(shit)
IO.puts inspect res
