# Repositories

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add repositories to your list of dependencies in `mix.exs`:

        def deps do
          [{:repositories, "~> 0.0.1"}]
        end

  2. Ensure repositories is started before your application:

        def application do
          [applications: [:repositories]]
        end
