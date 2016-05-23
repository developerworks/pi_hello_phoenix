defmodule PiHelloPhoenix.Model.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string, null: false
    timestamps
  end

  def insert(map) do
    user = Map.merge(%__MODULE__{}, map)
    # user = %__MODULE__{
    #   name: "hezhiqiang"
    # }
    user |> PiHelloPhoenix.Repo.insert!
  end
end
