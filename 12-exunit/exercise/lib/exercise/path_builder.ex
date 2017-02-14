defmodule Exercise.PathBuilder do
  @moduledoc """
  Utility module for constructing paths
  """

  @doc """
  Joins together segments into a path

  ## Examples

    iex> Exercise.PathBuilder.build(~w(pages how-to-test))
    "/pages/how-to-test"
  """
  def build(segments) do
    for s <- segments, into: "", do: "/" <> s
  end
end