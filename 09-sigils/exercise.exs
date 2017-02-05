defmodule Lesson9Sigils do
  def sigil_t(contents, opts) do
    contents
    |> String.split
    |> Enum.map(&String.upcase/1)
  end

  def use_sigil do
    ~t(hello world)
  end
end

defmodule Lesson9 do
  import Kernel, except: [sigil_r: 2]
  import Lesson9Sigils

  def sigil_r(contents, opts) do
    ~t(#{contents})opts
    |> Enum.reverse
  end

  def use_sigil do
    ~r(hello world)
  end
end

