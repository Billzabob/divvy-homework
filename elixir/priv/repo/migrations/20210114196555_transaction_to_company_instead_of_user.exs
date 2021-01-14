defmodule Homework.Repo.Migrations.TransactionToCompanyInstedOfUser do
  use Ecto.Migration

  def change do
    alter table(:transactions) do
      remove(:user_id)
      add(:company_id, references(:companies, type: :uuid, on_delete: :nothing))
    end
  end
end
