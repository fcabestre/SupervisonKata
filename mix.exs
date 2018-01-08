defmodule SupervisionCheatSheet.Mixfile do
  use Mix.Project

  def project do
    [
      app: :supervision_cheat_sheet,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {SupervisionCheatSheet.Application, []}
    ]
  end

  defp deps do
    []
  end
end
