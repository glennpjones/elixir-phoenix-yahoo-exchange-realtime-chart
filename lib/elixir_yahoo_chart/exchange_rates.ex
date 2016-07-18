defmodule ElixirYahooChart.ExchangeRates do
  import YahooFx

  @doc "gets the EUR/USD exchange rate"
  def get_exchange_rate do
    YahooFx.rate(:eur, :usd)
  end
end
