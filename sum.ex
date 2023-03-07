defmodule Arg do
  def sum([]), do: 0
  def sum([first_num | rest]) do
    first_num + sum(rest)
  end

  def increase(list) do
    list
    |> List.flatten()
    |> Enum.map(fn x -> x * x end)
    |> Enum.reverse()
  end

  def other(list) do
    Enum.reverse(Enum.map(List.flatten(list), fn x -> x * x end))
  end
end
