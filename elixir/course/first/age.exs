defmodule Voter do
  @moduledoc """
  Functions for working with Voters
  """

  @doc """
  ## Some shit
  """
  def elig(age) when is_binary(age) or is_integer(age) do
    eligibility(age)
  end

  def elig(_age) do
    "Invalid number"
  end

  defp eligibility(age) when is_binary(age) do
    eligibility(Integer.parse(age))
  end

  defp eligibility({age, _}) do
    eligibility(age)
  end

  defp eligibility(age) when is_integer(age) and age < 18 do
    "Can't vote"
  end

  defp eligibility(age) when is_integer(age) and age < 25 do
    "Can vote"
  end

  defp eligibility(:error) do
    "Error"
  end

  defp eligibility(_age) do
    "Can vote and run"
  end
end
