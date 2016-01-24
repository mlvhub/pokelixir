defmodule GameTest do
  use ExUnit.Case

  alias Pokelixir.Game

  @game %Game{created: "2013-11-03T19:31:10.975452", generation: 1, id: 1, modified: "2013-11-03T19:31:10.975393", name: "Red(jpn)", release_year: 1996, resource_uri: "/api/v1/game/1/"}

  test "a valid Game is retrieved correctly" do
    assert Game.get(1) == {200, @game}

    assert Game.get("1") == {200, @game}
  end

  test "invalid Game" do
    assert Game.get(1000) == {404, %Game{}}
  end

end
