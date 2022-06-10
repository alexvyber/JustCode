defmodule MyMath do
  def add(a, b) do
    a + b
  end

  def inc(a) do
    add = 1
    add(a, add)
  end

  def increment(num) do
    add = fn a, b ->
      IO.puts("anonym")
      a + b
    end

    add(num, 1)
    add.(num, 1)
  end
end
