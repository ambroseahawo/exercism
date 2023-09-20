defmodule GuessingGame do
  @moduledoc """
  Documentation for GuessingGame.
  """

  @doc """
    return correct if right guess
    return Too high if guess is greater than secret number
  """
  @spec compare(number(), number()) :: String.t()
  def compare(secret_number, guess) when guess == secret_number, do: "Correct"
  def compare(secret_number, guess) when guess > secret_number, do: "Too high"

end
