defmodule ElixirYahooChart.Router do
  use ElixirYahooChart.Web, :router

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

  scope "/", ElixirYahooChart do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/eur-dol", ExchangeController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElixirYahooChart do
  #   pipe_through :api
  # end
end
