defmodule Pokelixir.Ability do

  defstruct name: nil, id: nil, resource_uri: nil, created: nil, modified: nil, description: nil

  def endpoint_url(), do: "/ability/"

  use Pokelixir.Base

end
