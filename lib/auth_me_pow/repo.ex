defmodule AuthMePow.Repo do
  use Ecto.Repo,
    otp_app: :auth_me_pow,
    adapter: Ecto.Adapters.Postgres
end
