defmodule ApiElixirWeb.DefaultController do
  use ApiElixirWeb, :controller

  def index(conn, _params) do
    text conn, "ApiElixir!"
  end
end
