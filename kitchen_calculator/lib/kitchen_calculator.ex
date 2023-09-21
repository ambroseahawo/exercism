defmodule KitchenCalculator do
  @moduledoc """
  Documentation for KitchenCalculator.
  """

  @doc """
    return numeric volume
  """
  @spec get_volume(Tuple.t()) :: number()
  def get_volume(volume_pair), do: elem(volume_pair, 1)

end
