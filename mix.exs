defmodule Prismic.Mixfile do
  use Mix.Project

  def project do
    [
      app: :prismic,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Prismic.Application, []},
      extra_applications: [:logger, :httpoison]
    ]
  end

  defp deps do
    [{:httpoison, "~> 0.13", optional: true},
     {:poison, "~> 3.1"}]
  end
end