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
        date:Date.t() | nil,
        amount: number(),
        store:String.t()     
    }
end