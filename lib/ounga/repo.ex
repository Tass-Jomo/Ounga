defmodule Ounga.Repo do
  use Ecto.Repo,
    otp_app: :ounga,
    adapter: Ecto.Adapters.Postgres
end
