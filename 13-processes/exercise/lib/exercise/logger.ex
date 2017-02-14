defmodule Exercise.Logger do
  def listen do
    receive do
      {pid, result} -> 
        IO.puts(result) 
        listen
      _default -> 
        listen
    end
  end
end