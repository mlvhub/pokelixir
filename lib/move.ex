defmodule Pokelixir.Move do

  defstruct name: nil, id: nil, resource_uri: nil, created: nil, modified: nil, description: nil, power: nil, accuracy: nil, category: nil, pp: nil

  def endpoint_url(), do: "/move/"

  use Pokelixir.Base

end
