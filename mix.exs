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
      elixirc_paths: elixirc_paths(Mix.env()),
      source_url: "https://github.com/renatomassaro/docp",
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp description do
    """
    Document private functions (sparingly).
    """
  end

  defp package do
    [
      maintainers: ["Renato Massaro"],
      licenses: ["MIT"],
      links: %{
        GitHub: "https://github.com/renatomassaro/docp"
      }
    ]
  end

  def deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp aliases do
    []
  end

  defp docs do
    [
      main: "Docp"
    ]
  end
end
