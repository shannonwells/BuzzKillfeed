defmodule BuzzKillfeedWeb.Router do
  use BuzzKillfeedWeb, :router

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

  scope "/", BuzzKillfeedWeb do
    pipe_through :browser # Use the default browser stack

    get "/", HomeController, :index
    get "/clickbait_generator", ClickbaitGeneratorController, :index
    get "/best_of/:id", ClickbaitGeneratorController, :best_of
    # get "/fill_in_the_blank", FillInTheBlankController, :index
  end

end
