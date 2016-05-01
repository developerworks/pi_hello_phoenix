ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PiHelloPhoenix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PiHelloPhoenix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PiHelloPhoenix.Repo)

