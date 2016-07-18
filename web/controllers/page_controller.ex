defmodule ElixirYahooChart.PageController do
  use ElixirYahooChart.Web, :controller
  import ElixirYahooChart.ExchangeRates

  def index(conn, _params) do
    conn
    |> assign(:rate, get_exchange_rate)
    |> render "index.html"
  end
end
