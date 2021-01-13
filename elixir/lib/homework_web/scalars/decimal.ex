defmodule HomeworkWeb.Scalars.Decimal do
  use Absinthe.Schema.Notation

  scalar :decimal_amount do
    serialize(&(&1 / 100))
    parse(&parse_decimal/1)
  end

  defp parse_decimal(%Absinthe.Blueprint.Input.Float{value: value}) do
    try do
      {:ok, value |> Decimal.from_float() |> Decimal.mult(100) |> Decimal.to_integer()}
    rescue
      _ in _ -> :error
    end
  end

  defp parse_decimal(%Absinthe.Blueprint.Input.Null{}) do
    {:ok, nil}
  end

  defp parse_decimal(_) do
    :error
  end
end
