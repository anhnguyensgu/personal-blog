defmodule WebApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      WebApp.Telemetry,
      {Phoenix.PubSub, name: WebApp.PubSub},
      # Start the Endpoint (http/https)
      WebApp.Endpoint
      # Start a worker by calling: WebApp.Worker.start_link(arg)
      # {WebApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WebApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    WebApp.Endpoint.config_change(changed, removed)
    :ok
  end
end
