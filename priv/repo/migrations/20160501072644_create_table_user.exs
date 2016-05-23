defmodule PiHelloPhoenix.Repo.Migrations.CreateTableUser do
  use Ecto.Migration

  def up do
  	create_if_not_exists table(:users) do
  		add :name, :string, null: false
      timestamps
  	end
    create_if_not_exists index(:users, [:name], [unique: true])
  end

  def down do
    drop_if_exists table(:users)
    drop_if_exists index(:users, [:name])
  end
end
