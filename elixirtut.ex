defmodule M do
  def main do
    # name = IO.gets("What is your name? ") |> String.trim
    # IO.puts "Hello, #{name}"

    # IO.gets reads user input
    # String.trim removes leading and trailing whitespace
    # |> is the pipe operator, which is used to pass the result of one function to another
    # IO.puts prints the result of the pipe
    # IO.puts is a function that takes a string as an argument and prints it to the screen

    data_stuff()
    do_math()
    compare_values()
  end

  def data_stuff() do
    my_int = 123
    IO.puts("Is Integer #{is_integer(my_int)}")

    my_float = 123.456
    IO.puts("Is Float #{is_float(my_float)}")

    # atoms are immutable values
    # atoms are used to represent values that are not mutable
    # atoms names are same as the value they represent
    my_atom = :my_atom
    IO.puts("Is Atom #{is_atom(my_atom)}")

    # ranges
    # range is a sequence of values
    one_to_ten = 1..10

    # strings
    my_str = "Full Sentence"
    # IO.puts("Is String #{is_string(my_str)}")

    # get length of string
    IO.puts("Length : #{String.length(my_str)}")

    # string concatenation
    longer_str = my_str <> " " <> "is concatenated"
    IO.puts("Longer String : #{longer_str}")

    IO.puts("My ? #{String.contains?(my_str, "Sentence")}")

    # get character at index
    IO.puts("Char at index 2 : #{String.at(my_str, 2)}")

    # get substring
    IO.puts("Substring : #{String.slice(my_str, 5, 8)}")

    # split string to array/list
    IO.inspect(String.split(longer_str, " "))

    # join array/list to string
    # IO.puts("Joined String : #{String.join(String.split(longer_str, " "), " ")}")

    IO.puts(String.reverse(longer_str))
    IO.puts(String.upcase(longer_str))
    IO.puts(String.downcase(longer_str))
    IO.puts(String.capitalize(longer_str))

    (4 * 10) |> IO.puts()
  end

  def do_math do
    IO.puts("Addition: 5 + 4 = #{5 + 4}")
    IO.puts("Substraction: 10 - 3 = #{10 - 3}")
    IO.puts("Multiplication: 2 * 16 = #{2 * 16}")
    IO.puts("Division: 16 / 2 = #{16 / 2}")

    # integer division
    IO.puts("Integer Division: 17 div 2 = #{div(17, 2)}")
    # modulus division
    IO.puts("Modulus Divion: 19 mod 2 = #{rem(19, 2)}")
  end

  def compare_values do
    IO.puts("4 == 4.0 : #{4 == 4.0}")
    IO.puts("4 === 4.0 : #{4 === 4.0}")
    IO.puts("4 != 4.0 : #{4 != 4.0}")
    IO.puts("4 !== 4.0 : #{4 !== 4.0}")
    IO.puts("")
    IO.puts("5 > 4 : #{5 > 4}")
    IO.puts("5 >= 4 : #{5 >= 4}")
    IO.puts("5 < 4 : #{5 < 4}")
    IO.puts("5 <= 4 : #{5 <= 4}")

    age = 16

    IO.puts("Vote & Drive : #{age >= 16 and age >= 18}")
    IO.puts("Vote or Drive : #{age >= 16 or age >= 18}")

    IO.puts(not true)
  end
end

# data type conversion in elixir
