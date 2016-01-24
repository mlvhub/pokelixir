defmodule EndpointTest do
  use ExUnit.Case

  alias Pokelixir.Endpoint

  @body ~s({"name": "Charizard", "type": "Fire"})
  @atom_body %{name: "Charizard", type: "Fire"}

  test "process url appends the endpoint to the base url correctly" do
    assert Endpoint.process_url("/pokemon") == "http://pokeapi.co/api/v1/pokemon"
  end

  test "body is processed correctly, the keys are converted to atoms" do
    atom_body = Endpoint.process_response_body(@body)
    assert atom_body == @atom_body
  end

end
