defmodule ElixirYahooChart.ExchangeController do
  use ElixirYahooChart.Web, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
