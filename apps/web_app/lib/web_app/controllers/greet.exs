defmodule WebApp.MyComponent do
  use WebApp, :html
  alias Phoenix.Component

  def greet(assigns) do
    ~H"""
    <p>Hello, live_view!</p>
    """
  end

  def test_run do
  end
end
