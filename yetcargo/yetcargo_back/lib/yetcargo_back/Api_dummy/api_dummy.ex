defmodule YetcargoBack.ApiDummy do
  @moduledoc """
  Modulo encargado de hacer una petición a un api desde elixir.
  """

  def test() do
    HTTPoison.start
    HTTPoison.get! "http://dummy.restapiexample.com/api/v1/employees"
    |> IO.inspect
  end

end
