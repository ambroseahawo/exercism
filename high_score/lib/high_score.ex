defmodule HighScore do
  @moduledoc """
  Documentation for HighScore.
  """

  @doc """
    return new map
  """
  @spec new() :: Map.t()
  def new(), do: %{}

  @doc """
    add items to map
  """
  @spec add_player(Map.t(), String.t(), number()) :: Map.t()
  def add_player(scores, name, score \\ 0), do: Map.put(scores, name, score)

  @doc """
    remove item from map
  """
  @spec remove_player(Map.t(), String.t()) :: Map.t()
  def remove_player(scores, name), do: Map.delete(scores, name)

  @doc """
    update map value
  """
  @spec reset_score(Map.t(), String.t()) :: Map.t()
  def reset_score(scores, name), do: scores |> Map.put(name, 0)

end
