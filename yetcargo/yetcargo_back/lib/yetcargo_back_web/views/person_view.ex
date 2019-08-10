defmodule YetcargoBackWeb.PersonView do
  use YetcargoBackWeb, :view
  alias YetcargoBackWeb.PersonView

  def render("show.json", %{person: person}) do
    %{data: render_one(person, PersonView, "person.json")}
  end

  def render("person.json", %{person: person}) do
    person
  end
end
