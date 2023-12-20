defmodule PostsTest do
  use ExUnit.Case
  doctest Posts

  test "greets the world" do
    assert Posts.hello() == :world
  end
end
