defmodule Recursion do
  def sum(list) do
    do_sum(list, 0)
  end

  defp do_sum([], acc), do: acc
  defp do_sum([n|tail], acc) do
    acc = acc + n
    do_sum(tail, acc)
  end

  def reduce(list, init, cb) do
    do_reduce(list, init, cb)
  end

  defp do_reduce([], result, _cb), do: result
  defp do_reduce([n|tail], result, cb) do
    result = cb.(result, n)
    do_reduce(tail, result, cb)
  end

  def reverse(list) do
    do_reverse(list, [])
  end

  defp do_reverse([], acc), do: acc
  defp do_reverse([f|tail], acc) do
    acc = [f|acc]
    do_reverse(tail, acc)
  end
end
