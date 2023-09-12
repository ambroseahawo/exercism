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
end