defmodule Pokelixir.Game do

  defstruct name: nil, id: nil, resource_uri: nil, created: nil, modified: nil, generation: nil, release_year: nil

  def endpoint_url(), do: "/game/"

  use Pokelixir.Base

end
