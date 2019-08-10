defmodule YetcargoBack.Repo do
  use Ecto.Repo,
    otp_app: :yetcargo_back,
    adapter: Ecto.Adapters.Postgres
end
