defmodule Lasagna do
  @moduledoc """
  Documentation for `Lasagna`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Lasagna.hello()
      :world

  """
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(minutes_spent) do
    expected_minutes_in_oven() - minutes_spent
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(layers, minutes_spent) do
    preparation_time_in_minutes(layers) + minutes_spent
  end

  def alarm do
    "Ding!"
  end

end
