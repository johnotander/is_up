defmodule IsUp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :is_up,
      version: "1.0.2",
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      description: "Check whether a given url is up.",
      package: [
        maintainers: ["John Otander"],
        licenses: ["MIT"],
        links: %{ "Github" => "https://github.com/johnotander/is_up" }
      ]
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpotion]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"},
      {:httpotion, "~> 2.1.0"},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, "~> 0.10", only: :dev}
    ]
  end
end
