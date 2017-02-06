defmodule Exercise.PathBuilder do
  def build(segments) do
    for segment <- segments, into: "", do: "/" <> segment 
  end 
end