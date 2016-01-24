defmodule MoveTest do
  use ExUnit.Case

  alias Pokelixir.Move

  @move %Move{accuracy: 100, category: "", created: "2013-11-03T15:06:09.478009", description: "Inflicts regular damage.", id: 1, modified: "2013-12-24T15:24:29.625596", name: "Pound", power: 40, pp: 35, resource_uri: "/api/v1/move/1/"}

  test "a valid Move is retrieved correctly" do
    assert Move.get(1) == {200, @move}

    assert Move.get("1") == {200, @move}
  end

  test "invalid Move" do
    assert Move.get(1000) == {404, %Move{}}
  end

end
