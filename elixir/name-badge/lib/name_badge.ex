defmodule NameBadge do
  @spec print(integer(), String.t(),String.t()) :: String.t()
  # with
  def print(id, name, department) do
    # Please implement the print/3 function
    # using if
    if id == nil and department == nil do
      "#{name} - OWNER"
    else
      if id == nil do
        "#{name} - #{String.upcase(department)}"
      else
        if department == nil do
          "[#{Integer.to_string(id)}] - #{name} - OWNER"
        else
          "[#{Integer.to_string(id)}] - #{name} - #{String.upcase(department)}"
        end
      end
    end
  end

  # with pattern matching
  # def print(nil, name, nil), do: "#{name} - OWNER"
  # def print(id, name, nil), do: "[#{id}] - #{name} - OWNER"
  # def print(nil, name, department), do: "#{name} - #{String.upcase(department)}"
  # def print(id, name, department), do: "[#{id}] - #{name} - #{String.upcase(department)}"

  @spec print_with_cond(integer(), String.t(),String.t()) :: String.t()
  # using cond
  def print_with_cond(id,name,department) do
    cond do
      id == nil and department == nil -> "#{name} - OWNER"
      id == nil -> "#{name} - #{String.upcase(department)}"
      department == nil -> "[#{Integer.to_string(id)}] - #{name} - OWNER"
      true -> "[#{Integer.to_string(id)}] - #{name} - #{String.upcase(department)}"
    end
  end
end
