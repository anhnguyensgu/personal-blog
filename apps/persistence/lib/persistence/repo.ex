defmodule Persistence.Repo do
  @posts [%Persistence.Posts{title: "abc"}]
  def all do
    @posts
  end
end
