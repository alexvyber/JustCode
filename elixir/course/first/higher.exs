tally = %{a: 2, b: 123}
IO.puts(inspect(tally))

count = Map.get(tally, :a, 0) + 10
tally = Map.put(tally, :a, count)
IO.puts(inspect(tally))

increment = fn amount ->
  fn num -> num + amount end
end

tally = Map.update(tally, :a, 1, increment.(23))
IO.puts(inspect(tally))
