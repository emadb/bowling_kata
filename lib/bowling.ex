defmodule Bowling do
  def score([10, p2, p3]), do: 10 + p2 + p3
  def score([10, p2, p3 | tail]), do: 10 + p2 + p3 + score([p2, p3 | tail])
  def score([p1, p2, p3 | tail]) when p1 + p2 == 10,  do: p1 + p2 + p3 + score([p3 | tail])
  def score([p1, p2 | tail]) when p1 + p2 < 10 , do: p1 + p2 + score(tail)
  def score([_|_]), do: 0
  def score([]), do: 0
end
