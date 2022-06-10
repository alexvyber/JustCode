defmodule Party do
  @mascots %{
    dem: "don",
    rep: "el",
    lib: "stat"
  }

  @parties Map.keys(@mascots)

  def shit do
    "some shit"
  end

  def mascot(party) do
    @mascots[party]
  end

  def logo(party, size \\ :normal)

  def logo(party, size) when party in @parties do
    party_mascote = mascot(party)
    do_logo(party_mascote, size)
  end

  def logo(_party, size), do: do_logo("other", size)

  defp do_logo(mascot, :small), do: "#{mascot}_small.png"
  defp do_logo(mascot, _other_size), do: "#{mascot}_normal.png"
end

logo = Party.logo(:dem, :small)
logo1 = Party.logo(:lib, :normal)
IO.puts(logo)
IO.puts(logo1)
