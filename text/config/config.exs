use Mix.Config

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# should normally live in config.exs of the device app
config :scenic, :assets,
  module: Example.Assets,
  alias: [
    fuggles: "fonts/Fuggles-Regular.ttf",
    zen_tokyo_zoo: "fonts/ZenTokyoZoo-Regular.ttf"
  ]


config :logger, :console, format: "[$level] $message\n"

# Configure the main viewport for the Scenic application
config :example, :viewport, [
    name: :main_viewport,
    size: {800, 600},
    default_scene: Example.Scene,
    drivers: [[
            module: Scenic.Driver.Glfw,
            name: :glfw_driver,
            title: "Text"
          ]]
    ]