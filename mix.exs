defmodule DeepMap.MixProject do
  use Mix.Project

  def project do
    [
      app: :deep_map,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      # Lens
      {:lens, "~> 1.0.0"},
      {:iteraptor, "~> 1.5"},
      {:base62_uuid, "~> 3.0"},
      {:elixir_uuid, "~> 1.2"},
      {:benchee, "~> 1.0", only: :dev},
      {:benchee_html, "~> 1.0", only: :dev},
      {:benchee_markdown, "~> 0.2", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
