defmodule Yetcargo.PersonStruct do
  @derive {Jason.Encoder, only: [:id, :name, :mail, :phone, :age]}

  defstruct [
    :id,
    :name,
    :mail,
    :phone,
    :age
  ]
end
