defmodule WebApp.Router do
  use WebApp, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {WebApp.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WebApp do
    pipe_through :browser

    get "/", PageController, :home
    get "/about", PageController, :about
    get "/posts", PageController, :home
    get "/posts/:id", PageController, :post
  end

  # Other scopes may use custom stacks.
  # scope "/api", WebApp do
  #   pipe_through :api
  # end

  # Enable LiveDashboard in development
  if Application.compile_env(:web_app, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: WebApp.Telemetry
    end
  end
end
