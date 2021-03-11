defmodule ListFilter do
  def call(list), do: list_filter(list, 0)

  defp list_filter([], total), do: total

  defp list_filter([head | tail], total) do
    case isOdd(head) do
      true -> list_filter(tail, total + 1)
      _ -> list_filter(tail, total)
    end
  end

  defp isOdd(value) do
    case Integer.parse(value) do
      {number, _} -> rem(number, 2) != 0
      _ -> false
    end
  end
end
