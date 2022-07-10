defmodule F do
  def func(a, b \\ "shit")

  def func(a, b) when is_list(a) do
    "List with that shit: #{b}"
  end

  def func(a, b) do
    "#{IO.inspect(a)} and #{b}"
  end
end
