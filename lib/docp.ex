defmodule Docp do
  @moduledoc "README.md"
             |> File.read!()
             |> String.split("<!-- MDOC !-->")
             |> Enum.at(1)

  defmacro __using__(_) do
    quote do
      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      # Ensures that the compiler won't raise a warning about `@docp` or `@typedocp` being unused
      @typedocp ""
      @docp ""
    end
  end
end
