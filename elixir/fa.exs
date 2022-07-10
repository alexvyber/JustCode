defmodule F do
  def fac(0), do: 1

  def fac(n) when is_integer(n) and n > 0 do
    n * fac(n - 1)
  end

  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)
end
