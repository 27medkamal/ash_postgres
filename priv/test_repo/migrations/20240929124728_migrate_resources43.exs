defmodule AshPostgres.TestRepo.Migrations.MigrateResources43 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:users) do
      add(:role_list, {:array, :text}, default: [])
    end
  end

  def down do
    alter table(:users) do
      remove(:role_list)
    end
  end
end
