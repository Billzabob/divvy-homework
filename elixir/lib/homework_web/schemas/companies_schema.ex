defmodule HomeworkWeb.Schemas.CompaniesSchema do
  @moduledoc """
  Defines the graphql schema for companies.
  """
  use Absinthe.Schema.Notation

  alias HomeworkWeb.Resolvers.CompaniesResolver

  object :company do
    field(:id, non_null(:id))
    field(:name, :string)
    field(:credit_line, :decimal_amount)
    field(:inserted_at, :naive_datetime)
    field(:updated_at, :naive_datetime)

    field(:available_credit, :decimal_amount) do
      resolve(&CompaniesResolver.available_credit/3)
    end
  end

  object :paginated_company do
    field(:items, list_of(:company)) do
      arg(:limit, :integer)
      arg(:skip, :integer)
      resolve(&CompaniesResolver.companies/3)
    end

    field(:total_rows, :integer) do
      resolve(&CompaniesResolver.company_count/3)
    end
  end

  object :company_mutations do
    @desc "Create a new company"
    field :create_company, :company do
      arg(:name, non_null(:string))
      arg(:credit_line, non_null(:decimal_amount))

      resolve(&CompaniesResolver.create_company/3)
    end

    @desc "Update a new company"
    field :update_company, :company do
      arg(:name, non_null(:string))
      arg(:credit_line, non_null(:decimal_amount))

      resolve(&CompaniesResolver.update_company/3)
    end

    @desc "delete an existing company"
    field :delete_company, :company do
      arg(:id, non_null(:id))

      resolve(&CompaniesResolver.delete_company/3)
    end
  end
end
