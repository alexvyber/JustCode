defmodule Shit do

  import Integer

  def shit(n, b) do
    n
    |> Stream.map(&(&1 * b))
    |> Stream.filter(&Integer.is_even/1)
    |> Enum.sum()
  end
end
