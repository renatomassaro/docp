defmodule Docp do
  @moduledoc """
  TODO
  """

  defmacro __using__(_) do
    quote do
      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      # This ensures that the compiler won't raise a warning that `@docp` is unused
      @docp
    end
  end
end
