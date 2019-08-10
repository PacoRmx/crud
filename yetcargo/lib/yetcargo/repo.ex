defmodule Yetcargo.Repo do
  use Ecto.Repo,
    otp_app: :yetcargo,
    adapter: Ecto.Adapters.Postgres
end
