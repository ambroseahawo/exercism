defmodule GuessingGame do
  @moduledoc """
  Documentation for GuessingGame.
  """

  @doc """
    return correct if right guess
    return Too high if guess is greater than secret number
    return Too low if guess is lower than secret number
    return response to guesses that are close to the secret number.
    respond to lack of guess
  """
  @spec compare(number(), number()) :: String.t()
  def compare(secret_number, guess \\ :no_guess)
  
  def compare(_, :no_guess), do: "Make a guess"
  def compare(same, same), do: "Correct"
  def compare(secret_number, guess) when guess > secret_number and ((guess - secret_number != 1) and (secret_number - guess != 1)), do: "Too high"
  def compare(secret_number, guess) when guess < secret_number and ((guess - secret_number != 1) and (secret_number - guess != 1)), do: "Too low"
  def compare(secret_number, guess) when (guess - secret_number == 1) or (secret_number - guess == 1), do: "So close"

end
