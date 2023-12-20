defmodule Persistence.Repo do
  @posts [
    %Persistence.Posts{title: "abc"},
    %Persistence.Posts{title: "cde"},
    %Persistence.Posts{title: "cde"},
    %Persistence.Posts{title: "cde"},
    %Persistence.Posts{title: "cde"}
  ]
  def all do
    @posts
  end
end
