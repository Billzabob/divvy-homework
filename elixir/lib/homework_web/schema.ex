defmodule HomeworkWeb.Schema do
  @moduledoc """
  Defines the graphql schema for this project.
  """
  use Absinthe.Schema

  import_types(HomeworkWeb.Schemas.Types)

  query do
    @desc "Get all Transactions"
    field(:transactions, :paginated_transaction) do
      resolve(fn _, _ -> {:ok, %{}} end)
    end

    @desc "Get all Users"
    field(:users, :paginated_user) do
      resolve(fn _, _ -> {:ok, %{}} end)
    end

    @desc "Get all Merchants"
    field(:merchants, :paginated_merchant) do
      resolve(fn _, _ -> {:ok, %{}} end)
    end

    @desc "Get all Companies"
    field(:companies, :paginated_company) do
      resolve(fn _, _ -> {:ok, %{}} end)
    end
  end

  mutation do
    import_fields(:transaction_mutations)
    import_fields(:user_mutations)
    import_fields(:merchant_mutations)
  end
end
