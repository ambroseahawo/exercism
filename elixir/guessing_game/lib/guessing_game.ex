defmodule GuessingGame do
  @moduledoc """
  Documentation for GuessingGame.
  """

  @doc """
    return correct if right guess
  """
  @spec compare(number(), number()) :: String.t()
  def compare(secret_number, guess) when guess == secret_number, do: "Correct"

end
