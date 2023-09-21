defmodule KitchenCalculator do
  @moduledoc """
  Documentation for KitchenCalculator.
  """

  @doc """
    return numeric volume
  """
  @spec get_volume(Tuple.t()) :: number()
  def get_volume(volume_pair), do: elem(volume_pair, 1)

  @doc """
    convert volume-pair to milliliters
  """
  @spec to_milliliter(Tuple.t()) :: Tuple.t()
  def to_milliliter({:cup, _} = volume_pair), do: {:milliliter, (elem(volume_pair, 1)) * 240}
  def to_milliliter({:fluid_ounce, _} = volume_pair), do: {:milliliter, (elem(volume_pair, 1)) * 30}
  def to_milliliter({:teaspoon, _} = volume_pair), do: {:milliliter, (elem(volume_pair, 1)) * 5}
  def to_milliliter({:tablespoon, _} = volume_pair), do: {:milliliter, (elem(volume_pair, 1)) * 15}
  def to_milliliter({:milliliter, _} = volume_pair), do: volume_pair

  @doc """
    convert milliliter volume-pair to another unit
  """
  @spec from_milliliter(Tuple.t(), Atom.t()) :: Tuple.t()
  def from_milliliter(volume_pair, :cup = unit), do: {unit, (elem(volume_pair, 1)) / 240}
  def from_milliliter(volume_pair, :fluid_ounce = unit), do: {unit, (elem(volume_pair, 1)) / 30}
  def from_milliliter(volume_pair, :teaspoon = unit), do: {unit, (elem(volume_pair, 1)) / 5}
  def from_milliliter(volume_pair, :tablespoon = unit), do: {unit, (elem(volume_pair, 1)) / 15}
  def from_milliliter(volume_pair, :milliliter), do: volume_pair

  @doc """
    convert from any unit to any unit
  """
  @spec convert(Tuple.t(), Atom.t()) :: Tuple.t()
  def convert(volume_pair, unit), do: volume_pair |> to_milliliter |> from_milliliter(unit)

end
