defmodule LogLevel do
	@moduledoc """
		LogLevel
	"""

	@doc """
		label log level
	"""
	def to_label(level, legacy?) do
		cond do
			level == 0 and not legacy? -> :trace
			level == 1 -> :debug
			level == 2 -> :info
			level == 3 -> :warning
			level == 4 -> :error
			level == 5 and not legacy? -> :fatal
			true -> :unknown
		end
	end
end