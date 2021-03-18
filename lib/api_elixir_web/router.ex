defmodule ApiElixirWeb.Router do
  use ApiElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiElixirWeb do
    pipe_through :api
  end

  pipeline :browser do
    plug(:accepts, ["html"])
  end

  scope "/", ApiElixirWeb do
    pipe_through :browser
    get "/", DefaultController, :index
  end

  scope "/api", ApiElixirWeb do
    pipe_through :api
    resources "/businesses", BusinessController, except: [:new, :edit]
  end
end
