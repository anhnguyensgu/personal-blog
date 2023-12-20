defmodule Persistence.Converter do
  def convert_file(filename, format \\ :ast, count \\ 1) do
    content = File.read!(filename)
    content1 = Stream.cycle([content]) |> Enum.take(count) |> Enum.join("\n")
    {:ok, ast, []} = Earmark.Parser.as_ast(content1)

    case format do
      :ast -> ast
      :html -> ast |> Earmark.Transform.transform()
    end
  end
end
