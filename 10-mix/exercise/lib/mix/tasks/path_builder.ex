defmodule Mix.Tasks.PathBuilder do
  @shortdoc "Converts list in path"

  use Mix.Task

  def run(args) do
    IO.puts Exercise.PathBuilder.build(args)
  end
end