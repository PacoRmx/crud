defmodule YetcargoBackWeb.Router do
  use YetcargoBackWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", YetcargoBackWeb do
    pipe_through :api

    get "/person/", PersonController, :index
    get "/person/:id", PersonController, :show
    post "/person/", PersonController, :new
    put "/person/:id", PersonController, :update
    delete "/person/:id", PersonController, :delete
  end


  # Other scopes may use custom stacks.
  # scope "/api", YetcargoBackWeb do
  #   pipe_through :api
  # end
end
