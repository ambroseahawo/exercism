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
  def increment_day_count([todays_count | rest]), do: [todays_count + 1 | rest]
  # def increment_day_count(list) do
  #   Enum.map(list, fn list_item -> if hd(list) == list_item do list_item + 1 else list_item end end)
  # end

  @doc """
    return true if there was at least one day when no birds visited the garden, and false otherwise
  """
  @spec has_day_without_birds?([number()]) :: Boolean.t()
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _rest]), do: true
  def has_day_without_birds?([_todays_count | rest]),do: has_day_without_birds?(rest)
  # def has_day_without_birds?(list) do
  #   if 0 in list do true else false end
  # end

  @doc """
    take a list of daily bird counts and return the total number
  """
  @spec total([number()]) :: number()
  # def total(list), do: Enum.sum(list)
  def total(list), do: total(list, 0)

  defp total([], acc), do: acc
  defp total([todays_count | rest], acc), do: total(rest, acc + todays_count)

  @doc """
    take a list of daily bird counts and return the number of busy days.
  """
  @spec busy_days([number()]) :: number()
  def busy_days(list), do: busy_days(list, 0)

  defp busy_days([], acc), do: acc

  defp busy_days([todays_count | rest], acc) when todays_count >= 5, do: busy_days(rest, acc + 1)
  defp busy_days([_todays_count | rest], acc), do: busy_days(rest, acc)

end
