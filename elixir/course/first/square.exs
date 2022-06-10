defmodule Shit do
  def take(what) do
    IO.gets(what)
    |> String.trim()
    |> String.to_float()
  end
end

a = Shit.take("a ")
b = Shit.take("b ")

IO.puts("Squre is: #{a * b}")
