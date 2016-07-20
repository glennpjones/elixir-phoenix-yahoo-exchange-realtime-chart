defmodule ElixirYahooChart.GetRates do
  require Logger

  import ElixirYahooChart.ExchangeRates

  @doc "updates all available exchange rates"
  def update_all do
    result = get_exchange_rate
    %{:rate => rate} = result
    Logger.debug(inspect(result))
    Logger.debug("Rate is: #{rate}")

    ElixirYahooChart.Endpoint.broadcast "charts:lobby", "upd_figure", %{"body" => rate}
    Logger.info("Exchange rates updated")
  end
end
