defmodule YetcargoBack.PersonHandler do
  @moduledoc """
  Modulo encargado del CRUD person.
  """

  alias YetcargoBack.PersonSchema
  alias YetcargoBack.Repo
  alias YetcargoBack.PersonStruct

  import Ecto.Query

  def all_persons do
    from(p in PersonSchema,
    select: %PersonStruct{
      id: p.id,
      name: p.name,
      mail: p.mail,
      age: p.age,
      phone: p.phone
    })
    |> Repo.all()
  end

  def get_person(id) do
    from(p in PersonSchema,
    where: p.id == ^id,
    select: %PersonStruct{
      id: p.id,
      name: p.name,
      mail: p.mail,
      age: p.age,
      phone: p.phone
    })
    |> Repo.one()
  end

  def create_person(attrs) do
    %PersonSchema{}
    |> PersonSchema.changeset(attrs)
    |> Repo.insert()
  end

  def update_person(%PersonSchema{} = system, attrs) do
    PersonSchema.changeset(system, attrs)
    |> Repo.update()
  end

  def delete_person(id) do
    id
    |> get_person()
    |> Repo.delete()
  end
end
