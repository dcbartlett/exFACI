defmodule Statistics.Router do
  use Statistics.Web, :router

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

  scope "/", Statistics do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

  end
  forward "/beaker", Beaker.Web 
  
  # Other scopes may use custom stacks.
  # scope "/api", Statistics do
  #   pipe_through :api
  # end
end
