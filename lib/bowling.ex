defmodule Bowling do
  def score(game, frame \\ 1)

  def score([p1, p2], 10), do: p1 + p2
  def score([p1, p2, p3], 10), do: p1 + p2 + p3
  def score([10, p2, p3 | tail], frame), do: 10 + p2 + p3 + score([p2, p3 | tail], frame + 1)

  def score([p1, p2, p3 | tail], frame) when p1 + p2 == 10,
    do: p1 + p2 + p3 + score([p3 | tail], frame + 1)

  def score([p1, p2 | tail], frame) when p1 + p2 < 10, do: p1 + p2 + score(tail, frame + 1)
end
