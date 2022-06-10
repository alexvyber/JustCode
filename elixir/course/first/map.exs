defmodule Util do
  import Enum, only: [reverse: 1]
  def map(list, fun) when is_list(list), do: do_map(list, fun)

  defp do_map(list, mapd_list \\ [], _fun)
  defp do_map([], mapd_list, _fun), do: reverse(mapd_list)
  defp do_map([head | tail], mapd_list, fun), do: do_map(tail, [fun.(head) | mapd_list], fun)
end

shit = [1, 2, 3, 4]

mul = 33
dob = Util.map(shit, &(&1 * mul))
IO.puts(inspect(dob))
