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
  @spec add([any], String.t()) :: [any]-
  def add(list, language), do: [language | list]  #fast
  # def add(list, language), do: list++ [language]  #slow

  @doc """
    removes item from list
  """
  @spec delete([any],String.t()) :: [any]
  def delete(list, language), do: List.delete(list, language)

  @doc """
    return first item in list
  """
  @spec first([any]) :: any()
  def first(list), do: hd(list)

  @doc """
    delete first element
  """
  @spec remove_head([any]) :: [any]
  def remove_head(list), do: List.delete(list, hd(list))

  @doc """
    return number of elements
  """
  @spec count([any]) :: number()
  def count(list), do: length(list)

  @doc """
    in operator
  """
  @spec functional_list?([any]) :: Boolean.t()
  def functional_list?(list) do
    if "Elixir" in list do
      true
    else
      false
    end
  end

end