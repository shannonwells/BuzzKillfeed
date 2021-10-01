defmodule BuzzKillfeedWeb.Router do
  use BuzzKillfeedWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {BuzzKillfeedWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BuzzKillfeedWeb do
    pipe_through :browser

    get "/", HomeController, :index

    get "/about", HomeController, :about
  end

  scope "/clickbait_generator", ClickbaitGenerator do
    pipe_through :browser

    get "/", ClickbaitGeneratorController, :index

    get "/best_of", ClickbaitGeneratorController, :best_of

    get "/generate", ClickbaitGeneratorController, :generate
  end

  scope "/fill_in_the_bait", FillInTheBait do
    pipe_through :browser

    get "/", FillInTheBaitController, :index
  end


  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: BuzzKillfeedWeb.Telemetry
    end
  end
end
