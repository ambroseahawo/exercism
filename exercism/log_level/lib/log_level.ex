defmodule LogLevel do
	@moduledoc """
		LogLevel
	"""

	@doc """
		label log level
	"""
	@spec to_label(number(), Boolean.t()) :: :Atom.t()
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

	@doc """
		return alert recipient
	"""
	@spec alert_recipient(number(), Boolean.t()) :: :Atom.t()
	def alert_recipient(level, legacy?) do
		label = to_label(level, legacy?)

		cond do
			label == :error or label == :fatal -> :ops
			label == :unknown and legacy? -> :dev1
			label == :unknown and not legacy? -> :dev2
			true -> false
				
		end
	end
end