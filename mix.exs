defmodule ExFACI.Mixfile do
  use Mix.Project

  def project do
    [apps_path: "apps",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps do
    [
      {:apex, "~>0.3.2"}, # Awesome Print
      {:arc, "~> 0.1.4"}, # File Upload
      {:calendar, "~> 0.11.1"}, #Date/Time Math 
      {:mogrify, "~> 0.2"}, # Wrapper for ImageMagic, probably belongs in it's own app.
      {:plist, "~> 0.0.1"}, # Will need to be moved into the iOS build app
      {:harakiri, ">= 0.6.0"}, # File application control
    ]
  end
end
