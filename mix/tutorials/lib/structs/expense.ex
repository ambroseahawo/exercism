defmodule Tutorials.Structs.Expense do
    alias Tutorials.Structs.Expense

    defstruct(
        title: "",
        date: nil,
        amount: 0,
        store: ""
    )

    @type t :: %Expense{
            title: String.t(),
            date: Date.t() | nil,
            amount: number(),
            store: String.t()     
        }
    
    def sample do
        [
            %Expense{title: "Grocery", date: ~D[2022-09-12], amount: 18.99, store: "Metro"},
            %Expense{title: "Mobile", date: ~D[2022-10-18], amount: 55.65, store: "Bell"},
            %Expense{title: "Jacket", date: ~D[2022-07-06], amount: 150.99, store: "Marks"},
            %Expense{title: "Air Jordans", date: ~D[2022-10-30], amount: 799.99, store: "Nike"}
        ]
    end
end