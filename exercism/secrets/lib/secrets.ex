use Bitwise

defmodule Secrets do
    @moduledoc """
        secrets module documentation
    """

    @doc """
        secret add function
    """
    @spec secret_add(number()) :: number()
    def secret_add(secret) do
        &(&1 + secret)
    end

    @spec secret_subtract(number()) :: number()
    def secret_subtract(secret) do
        &(&1 - secret)
    end

    @spec secret_multiply(number()) :: number()
    def secret_multiply(secret) do
        &(&1 * secret)
    end

    @spec secret_divide(number()) :: number()
    def secret_divide(secret) do
        &div(&1, secret)
    end

    @spec secret_and(number()) :: number
    def secret_and(secret) do
        &Bitwise.band(&1, secret)
    end

    @spec secret_xor(number()) :: number
    def secret_xor(secret) do
        &Bitwise.bxor(&1, secret)
    end
    
    def secret_combine(secret_function1, secret_function2) do
        # &(&1 |> then(secret_function1) |> then(secret_function2))
        &(secret_function2.(secret_function1.(&1)))
    end
end