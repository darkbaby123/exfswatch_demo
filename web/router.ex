defmodule ExfswatchDemo.Router do
  use ExfswatchDemo.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExfswatchDemo do
    pipe_through :api
  end
end
