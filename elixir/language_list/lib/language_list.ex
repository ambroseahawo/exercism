defmodule LanguageList do
  @moduledoc """
  Documentation for LanguageList.
  """

  @doc """
    return empty list
  """
  @spec new() :: List.t()
  def new(), do: []

  @doc """
    adds new item to list
  """
  @spec add([any], String.t()) :: [any]
  def add(list, language), do: [language | list]  #fast
  # def add(list, language), do: list++ [language]  #slow

  @doc """
    removes item from list
  """
  @spec delete([any],String.t()) :: [any]
  def delete(list, language), do: List.delete(list, language)

end