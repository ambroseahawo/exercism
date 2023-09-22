defmodule HighSchoolSweetheart do
  @moduledoc """
  Documentation for HighSchoolSweetheart.
  """

  @doc """
    return first letter in string 
  """
  @spec first_letter(String.t()) :: String.t()
  def first_letter(name), do: String.trim(name) |> String.at(0)

  @doc """
    format first letter as an initial
  """
  @spec initial(String.t()) :: String.t()
  def initial(name), do: String.upcase(name) |> first_letter() |> Kernel.<>(".")

end
