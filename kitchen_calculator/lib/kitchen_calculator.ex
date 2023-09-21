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

end
