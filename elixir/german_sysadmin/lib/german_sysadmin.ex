defmodule Username do
  @moduledoc """
  Documentation for `GermanSysadmin`.
  """
  def sanitize([]), do: []

  def sanitize([char | rest]) do
    # [char | sanitize(rest)]
    case char do
      c when c in ?a..?z or c == ?_ -> [c | sanitize(rest)]
      ?ä -> [?a, ?e | sanitize(rest)]
      ?ö -> [?o, ?e | sanitize(rest)]
      ?ü -> [?u, ?e | sanitize(rest)]
      ?ß -> [?s, ?s | sanitize(rest)]
      _ -> sanitize(rest)
    end
  end

  # def sanitize([?ä | rest]), do: [?a, ?e | sanitize(rest)]
  # def sanitize([?ö | rest]), do: [?o, ?e | sanitize(rest)]
  # def sanitize([?ü | rest]), do: [?u, ?e | sanitize(rest)]
  # def sanitize([?ß | rest]), do: [?s, ?s | sanitize(rest)]

  # def sanitize([_char | rest]), do: sanitize(rest)
end
