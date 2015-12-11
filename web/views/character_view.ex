defmodule ExRpbot.CharacterView do
  use ExRpbot.Web, :view

  def render("index.json", %{characters: characters}) do
    %{data: render_many(characters, ExRpbot.CharacterView, "character.json")}
  end

  def render("show.json", %{character: character}) do
    %{data: render_one(character, ExRpbot.CharacterView, "character.json")}
  end

  def render("character.json", %{character: character}) do
    %{id: character.id,
      name: character.name,
      description: character.description}
  end
end
