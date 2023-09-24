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

  @doc """
    update map value
  """
  @spec update_score(Map.t(), String.t(), number()) :: Map.t()
  # def update_score(scores, name, score) do
  #   current_score = Map.get(scores, name)
  #   if current_score do
  #     Map.put(scores, name, score + current_score)
  #   else 
  #     Map.put(scores, name, score)
  #   end
  # end
  def update_score(scores, name, score), do: Map.update(scores, name, score,fn current_value -> current_value + score end)
    def update_score_short(scores, name, score), do: Map.update(scores, name, score, &(&1 + score))

  @doc """
    return list of keys in a map
  """
  @spec get_players(Map.t()) :: List.t()
  def get_players(scores), do: scores |> Map.keys()

end
