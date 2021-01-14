defmodule HomeworkWeb.Resolvers.UsersResolver do
  alias Homework.Companies
  alias Homework.Users

  @doc """
  Get a list of users
  """
  def users(_root, args, _info) do
    {:ok, Users.list_users(args)}
  end

  def user_count(_root, _args, _info) do
    {:ok, Users.count_users()}
  end

  @spec company(any, any, %{source: %{company_id: any}}) :: {:ok, any}
  @doc """
  Get the company associated with a user
  """
  def company(_root, _args, %{source: %{company_id: company_id}}) do
    {:ok, Companies.get_company!(company_id)}
  end

  @spec create_user(
          any,
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any},
          any
        ) :: {:error, <<_::64, _::_*8>>} | {:ok, any}
  @doc """
  Creates a user
  """
  def create_user(_root, args, _info) do
    case Users.create_user(args) do
      {:ok, user} ->
        {:ok, user}

      error ->
        {:error, "could not create user: #{inspect(error)}"}
    end
  end

  @doc """
  Updates a user for an id with args specified.
  """
  def update_user(_root, %{id: id} = args, _info) do
    user = Users.get_user!(id)

    case Users.update_user(user, args) do
      {:ok, user} ->
        {:ok, user}

      error ->
        {:error, "could not update user: #{inspect(error)}"}
    end
  end

  @doc """
  Deletes a user for an id
  """
  def delete_user(_root, %{id: id}, _info) do
    user = Users.get_user!(id)

    case Users.delete_user(user) do
      {:ok, user} ->
        {:ok, user}

      error ->
        {:error, "could not update user: #{inspect(error)}"}
    end
  end
end
