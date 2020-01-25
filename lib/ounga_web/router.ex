defmodule OungaWeb.Router do
  use OungaWeb, :router

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

  scope "/", OungaWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/victoria", VictoriaController, :index
    get "/upcoming", UpcomingController, :index
    get "/services", ServicesController, :index
    get "/about", AboutController, :index
    get "/terraces", TerracesController, :index
    get "/raeli", RaeliController, :index
    get "/units", UnitsController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", OungaWeb do
  #   pipe_through :api
  # end
end
