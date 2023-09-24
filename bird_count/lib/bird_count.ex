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

  @doc """
    return true if there was at least one day when no birds visited the garden, and false otherwise
  """
  @spec has_day_without_birds?([number()]) :: Boolean.t()
  def has_day_without_birds?(list) do
    if 0 in list do true else false end
  end

  @doc """
    take a list of daily bird counts and return the total number
  """
  @spec total([number()]) :: number()
  def total(list), do: Enum.sum(list)

end
