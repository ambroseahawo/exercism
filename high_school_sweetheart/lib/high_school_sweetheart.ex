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

  @doc """
    split full name into first and last name
  """
  @spec initials(String.t()) :: String.t()
  def initials(full_name) do
    split_first_last = String.trim(full_name) |> String.upcase() |> String.split()
    first_initial = initial(hd(split_first_last))
    last_initial = initial(Enum.at(split_first_last, -1))
    Kernel.<>(first_initial <> " " , last_initial )
  end

end
