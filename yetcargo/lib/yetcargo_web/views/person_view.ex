defmodule YetcargoWeb.PersonView do
  use YetcargoWeb, :view
  alias YetcargoWeb.PersonView

  def render("show.json", %{person: person}) do
    %{data: render_one(person, PersonView, "person.json")}
  end

  def render("person.json", %{person: person}) do
    person
  end
end
