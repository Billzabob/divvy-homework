defmodule HomeworkWeb.Resolvers.TransactionsResolver do
  alias Homework.Merchants
  alias Homework.Transactions
  alias Homework.Companies

  @doc """
  Get a list of transcations
  """
  def transactions(_root, args, _info) do
    {:ok, Transactions.list_transactions(args)}
  end

  def transaction_count(_root, _args, _info) do
    {:ok, Transactions.count_transactions()}
  end

  @spec company(%{company_id: any}, any, any) :: {:ok, any}
  @doc """
  Get the user associated with a transaction
  """
  def company(%{company_id: company_id}, _args, _info) do
    {:ok, Companies.get_company!(company_id)}
  end

  @doc """
  Get the merchant associated with a transaction
  """
  def merchant(%{merchant_id: merchant_id}, _args, _info) do
    {:ok, Merchants.get_merchant!(merchant_id)}
  end

  @doc """
  Create a new transaction
  """
  def create_transaction(_root, args, _info) do
    case Transactions.create_transaction(args) do
      {:ok, transaction} ->
        {:ok, transaction}

      error ->
        {:error, "could not create transaction: #{inspect(error)}"}
    end
  end

  @doc """
  Updates a transaction for an id with args specified.
  """
  def update_transaction(_root, %{id: id} = args, _info) do
    transaction = Transactions.get_transaction!(id)

    case Transactions.update_transaction(transaction, args) do
      {:ok, transaction} ->
        {:ok, transaction}

      error ->
        {:error, "could not update transaction: #{inspect(error)}"}
    end
  end

  @doc """
  Deletes a transaction for an id
  """
  def delete_transaction(_root, %{id: id}, _info) do
    transaction = Transactions.get_transaction!(id)

    case Transactions.delete_transaction(transaction) do
      {:ok, transaction} ->
        {:ok, transaction}

      error ->
        {:error, "could not update transaction: #{inspect(error)}"}
    end
  end
end
