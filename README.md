# Elixir Phoenix "app" with chart.js showing realtime EUR/USD exchange rate

This has been an experiment to see how I could combine calls to the Yahoo EUR/USD exchange rate api with phoenix channels (websockets) to allow continuous updating of a chart.js linechart showing the exchange rate. I'm learning Elixir.

To start the Phoenix app:
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`
	* Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
