# elixir 2_pattern_matching.exs

IO.puts("LIST")
fancy_list = [:list, "world", "42"]
IO.inspect(fancy_list)
[a1, _, c1] = fancy_list
IO.inspect(a1)
IO.inspect(c1)
IO.puts("")

IO.puts("TUPLES")
fancy_tuple = {:tuple, "world", "666"}
IO.inspect(fancy_tuple)
{a2, _, c2} = fancy_tuple
IO.inspect(a2)
IO.inspect(c2)
IO.puts("")

IO.puts("AnswerChecker")

defmodule AnswerChecker do
  def check(42) do
    "correct"
  end

  def check(x) when x == 41 or x == 43 do
    "so close"
  end

  def check(_) do
    "wrong"
  end
end

# Map = %{}
IO.inspect(%{question: 666, answer: AnswerChecker.check(666)})
IO.inspect(%{question: 41, answer: AnswerChecker.check(41)})
IO.inspect(%{question: 43, answer: AnswerChecker.check(43)})
IO.inspect(%{question: 42, answer: AnswerChecker.check(42)})
