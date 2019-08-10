defmodule Yetcargo.PersonSchema do
  @moduledoc """
  Schema para la tabla Person.
  """

  use Ecto.Schema

  import Ecto.Changeset

  schema "persons" do
    field :name, :string
    field :mail, :string
    field :phone, :string
    field :age, :integer

    timestamps()
  end

  @doc false
  def changeset(person, attrs) do
    person
    |> cast(attrs, [:name, :mail, :phone, :age])
    |> validate_required([:name, :mail, :phone, :age], message: "El dato es requerido")
  end
end
