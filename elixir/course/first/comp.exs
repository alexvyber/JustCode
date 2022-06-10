import Integer, only: [is_even: 1]

l = [1, 2, 3, 4]
ll = [1111, 2222, 3333, 4444]

n =
  l
  |> Enum.filter(&is_even/1)
  |> Enum.map(fn x ->
    ll
    |> Enum.filter(&is_even/1)
    |> Enum.map(&(&1 * x))
  end)
  |> Enum.flat_map(&(&1))

IO.puts inspect n

m = for x <- l, y <- ll, is_even(x), is_even(y), do: x * y
IO.puts inspect m
