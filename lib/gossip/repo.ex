defmodule Gossip.Repo do
  use Ecto.Repo,
    otp_app: :gossip,
    adapter: Ecto.Adapters.SQLite3
end
