defmodule ABI.Mixfile do
  use Mix.Project

  def project do
    [
      app: :abi,
      version: "0.2.0",
      elixir: "~> 1.7",
      description: "Ethereum's ABI Interface",
      package: [
        maintainers: ["Geoffrey Hayes", "Mason Fischer"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/exthereum/ethereum"}
      ],
      build_embedded: Mix.env() == :prod,
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
      # Umbrella
      {:exth_crypto, in_umbrella: true},

      # Libraries
      {:poison, "~> 4.0.1", only: [:dev, :test]},

      # Common
      {:credo, "~> 0.10.2", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.3", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.19.1", only: :dev, runtime: false},
    ]
  end
end
