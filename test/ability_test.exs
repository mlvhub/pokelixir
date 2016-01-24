defmodule AbilityTest do
  use ExUnit.Case

  alias Pokelixir.Ability

  @ability %Ability{created: "2013-11-03T15:05:59.481261", description: "", id: 1, modified: "2013-11-03T15:05:59.481206", name: "Stench", resource_uri: "/api/v1/ability/1/"}

  test "a valid Ability is retrieved correctly" do
    assert Ability.get(1) == {200, @ability}

    assert Ability.get("1") == {200, @ability}
  end

  test "invalid Ability" do
    assert Ability.get(1000) == {404, %Ability{}}
  end

end
