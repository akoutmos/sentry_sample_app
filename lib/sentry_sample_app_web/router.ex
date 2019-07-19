defmodule SentrySampleAppWeb.Router do
  use SentrySampleAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/math", SentrySampleAppWeb do
    pipe_through :api

    post "/", MathController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", SentrySampleAppWeb do
  #   pipe_through :api
  # end
end
