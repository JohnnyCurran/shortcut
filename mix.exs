defmodule Shortcut.MixProject do
  use Mix.Project

  def project do
    [
      app: :shortcut,
      version: "0.1.0",
      elixir: "~> 1.13",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url:  "https://github.com/JohnnyCurran/shortcut"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.8"}
    ]
  end

  defp description do
    "Interact with the Shortcut Project Management API in Elixir"
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/JohnnyCurran/shortcut"
    ]
end
