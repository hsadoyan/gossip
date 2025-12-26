defmodule GossipWeb.PageController do
  use GossipWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
