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

  @doc """
    take a list of daily bird counts and increment the today's count by 1
  """
  @spec increment_day_count([number()]) :: [number()]
  def increment_day_count([]), do: [1]
  def increment_day_count(list) do
    Enum.map(list, fn list_item -> if hd(list) == list_item do list_item + 1 else list_item end end)
  end

end
