votes = [
  %{dist: 1, can: 1, vot: 100},
  %{dist: 1, can: 2, vot: 111},
  %{dist: 1, can: 3, vot: 95},
  %{dist: 1, can: 2, vot: 105},
  %{dist: 1, can: 3, vot: 84},
  %{dist: 2, can: 2, vot: 100},
  %{dist: 2, can: 1, vot: 115},
  %{dist: 2, can: 1, vot: 8},
  %{dist: 3, can: 2, vot: 139},
  %{dist: 3, can: 3, vot: 86},
  %{dist: 3, can: 1, vot: 127}
]

filtred = Enum.filter(votes, &(&1.vot < 100))
IO.puts(inspect(filtred))

total =
  votes
  |> Enum.filter(&(&1.can == 3))
  |> Enum.map(& &1.vot)
  |> Enum.sum()

IO.puts(inspect(total))
