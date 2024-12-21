defmodule Docp.Mixfile do
  use Mix.Project

  @version "1.0.0"

  def project do
    [
      app: :docp,
      version: @version,
      elixir: "~> 1.14",
      description: description(),
      package: package(),
      deps: deps(),
      aliases: aliases(),
      compilers: Mix.compilers(),
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp description do
    """
    TODO
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Renato Massaro"],
      licenses: ["MIT"],
      links: %{
        Changelog: "todo",
        GitHub: "todo"
      }
    ]
  end

  def deps do
    []
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp aliases do
    []
  end
end
