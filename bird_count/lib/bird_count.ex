defmodule BirdCount do
  @moduledoc """
  Documentation for BirdCount.
  """

  @doc """
    take a list of daily bird counts and return today's count
  """
  @spec today([number()]) :: number()
  def today([]), do: nil
  def today(list), do: hd(list)

end
