defmodule PersistenceTest do
  use ExUnit.Case
  doctest Persistence

  test "greets the world" do
    IO.inspect(System.get_env("HELLO"))
    result = Persistence.Converter.convert_file("README.md", :html)
    IO.inspect(result)
    assert String.length(result) > 0
  end
end
