defmodule PathBuilderTest do
  use ExUnit.Case
  doctest Exercise.PathBuilder

  @tag :slow
  test ".build" do
    assert Exercise.PathBuilder.build(~w(pages page)) == "/pages/pages"
  end
end
