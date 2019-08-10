defmodule YetcargoBackWeb.PersonController do
  @moduledoc """
  Controller encargado de el modulo person
  """
  use YetcargoBackWeb, :controller
  alias YetcargoBack.PersonHandler

  action_fallback YetcargoBackWeb.FallbackController

  def index(conn, _params) do
    persons = PersonHandler.all_persons
    render(conn, "show.json", person: persons)
  end

  def show(conn, %{"id" => id}) do
    person = PersonHandler.get_person(id)
    render(conn, "show.json", person: person)
  end

  def new(conn, %{"name" => _name, "mail" => _mail, "phone" => _phone, "age" => _age} = params) do
    PersonHandler.create_person(params)
    |> case do
      {:ok, _person} ->
        render(conn, "show.json", person: "Creado")
      {:error, _reason} ->
        render(conn, "show.json", person: "Error al crear")
    end
  end

  def update(conn, %{"name" => _name, "mail" => _mail, "phone" => _phone, "age" => _age, "id" => id} = params) do
    id
    |> PersonHandler.get_person()
    |> PersonHandler.update_person(params)
    |> case do
      {:ok, _person} ->
        render(conn, "show.json", person: "Actualizado correctamente")
      {:error, _reason} ->
        render(conn, "show.json", person: "Error al actualizar")
    end
  end

  def delete(conn, %{"id" => id}) do
    person = PersonHandler.get_person(id)
    render(conn, "show.json", person: person)
  end

end
