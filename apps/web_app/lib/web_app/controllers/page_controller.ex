defmodule WebApp.PageController do
  require Logger
  use WebApp, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    posts = Persistence.Repo.all()
    render(conn, :home, posts: posts)
  end

  def about(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :about)
  end

  def post(conn, %{"id" => _id}) do
    # The home page is often custom made,
    # so skip the default app layout.
    content = Persistence.Converter.convert_file("apps/web_app/README.md", :html)
    Logger.info(content)
    render(conn, :post, content: content)
  end
end
