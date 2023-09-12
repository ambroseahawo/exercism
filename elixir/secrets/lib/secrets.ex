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
end