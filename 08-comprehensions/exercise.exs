defmodule Lesson8 do
  
  def evens(n) do
    for x <- (1..n), do: x * 2
  end
  
  def join(list, separator) do
    for s <- list, into: "", do: separator <> s
  end

end