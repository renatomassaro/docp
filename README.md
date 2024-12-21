# Docp

<!-- MDOC !-->

Docp lets you add documentation to private functions via the `@docp` module attribute.

You shouldn't, but you can.

```elixir
defmodule MyModule do
  use Docp

  @docp """
  Does something
  """
  defp foo, do: :something
end
```

Docp will ensure that the Elixir compiler doesn't raise a warning about `@docp` being unused.

## When to use this library

As a general rule of thumb, documenting private functions is discouraged and should be avoided. Consider first moving the private functions into a separate module and then converting them to public functions.

Ultimately, only *you* know what's best for your project, and if you think it's useful to add a docstring to a private function, go for it. Dogma should not dictate software development.
