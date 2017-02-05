defmodule Lesson7 do
  def months do
    Stream.cycle(["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"])
  end

  def n_months(n) do
    months()
    |> Enum.take(n)
  end

  def get_ds do
    get_words_starting_with("D")
    |> Enum.sort_by(&String.length/1)
  end

  def get_words_starting_with(start) do
    get_words()
    |> Stream.filter(&String.starts_with?(&1, String.capitalize(start)))
  end

  def get_words do
    File.stream!("sample.txt", [], :line)
    |> Stream.map(&String.capitalize/1)
  end
end