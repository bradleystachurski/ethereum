# ExCrypto

ExCrypto handles the majority of core cryptographic operations for Exthereum. The goal of this project is to give each Exthereum project a common set of cryptographic functions where the backends can be swapped out as need be. Additionally, more complicated protocols (such as ECIES) can be implemented here.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_crypto` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_crypto, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_crypto](https://hexdocs.pm/ex_crypto).

