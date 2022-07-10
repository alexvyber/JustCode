defmodule P do
  def reduce([], val, _fun) do
    val
  end

  def reduce([head | tail], val, fun) do
    reduce(tail, fun.(head, val), fun)
  end

  def maxf(list, max_val \\ 0)

  def maxf([], max_val), do: max_val

  def maxf([head | tail], max_val) do
    if max_val < head, do: maxf(tail, head), else: maxf(tail, max_val)
  end

  def span(a, b, acc \\ 0)

  def span(b, b, acc) do
    acc + b
  end

  def span(a, b, acc) do
    span(a + 1, b, acc + a)
  end
end
