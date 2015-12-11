defmodule ExRpbot.Repo.Migrations.CreateCharacter do
  use Ecto.Migration

  def change do
    create table(:characters) do
      add :name, :string
      add :description, :string

      timestamps
    end

  end
end
