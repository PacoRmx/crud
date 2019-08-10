defmodule Yetcargo.PersonHandler do
  @moduledoc """
  Modulo encargado del CRUD person.
  """

  alias Yetcargo.PersonSchema
  alias Yetcargo.Repo
  alias Yetcargo.PersonStruct

  import Ecto.Query

  def all_persons do
    get_all_users_query()
    |> Repo.all()
  end

  def get_person(id) do
    get_user_query(id)
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

  # Private

  defp get_all_users_query() do
    from(p in PersonSchema,
    select: %PersonStruct{
      id: p.id,
      name: p.name,
      mail: p.mail,
      age: p.age,
      phone: p.phone
    })
  end

  defp get_user_query(id) do
    from(p in PersonSchema,
    where: p.id == ^id,
    select: %PersonStruct{
      id: p.id,
      name: p.name,
      mail: p.mail,
      age: p.age,
      phone: p.phone
    })
  end
end
