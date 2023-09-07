defmodule Tutorials.Structs.SevenWonders do
  defstruct name: "", country: ""
  alias Tutorials.Structs.SevenWonders

  @type t :: %SevenWonders{
    name: String.t(),
    country: String.t()
  }

  @spec all :: [t()]
  def all() do
    [
      %SevenWonders{name: "Taj Mahal", country: "India"},
      %SevenWonders{name: "Chichén Itzá", country: "Mexico"},
      %SevenWonders{name: "Petra", country: "Jordan"},
      %SevenWonders{name: "Machu Picchu", country: "Peru"},
      %SevenWonders{name: "Christ the Redeemer", country: "Brazil"},
      %SevenWonders{name: "Colosseum", country: "Italy"},
      %SevenWonders{name: "The Great Wall of China", country: "China"}
    ]
  end
end