# Docp

Let's you add documentation to private function via the `@docp` module attribute.

You shouldn't, but you can.

```elixir
use Docp

@docp """
Does something
"""
defp foo, do: :something
```

Docp will ensure that the Elixir compiler doesn't raise a warning complaining about `@docp` not being used.
