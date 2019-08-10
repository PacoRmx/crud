defmodule YetcargoBack.Repo.Migrations.AddPersonTable do
  use Ecto.Migration

  def change do
    create table("persons") do
      add :name, :string
      add :mail, :string
      add :phone, :string
      add :age, :integer

      timestamps()
    end
  end
end
