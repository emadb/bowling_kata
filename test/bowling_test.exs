defmodule BowlingTest do
  use ExUnit.Case
  doctest Bowling

  test "all zeros" do
    score = Bowling.score([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    assert score == 0
  end

  test "all ones" do
    score = Bowling.score([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
    assert score == 20
  end

  test "one spare" do
    score = Bowling.score([5, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    assert score == 16
  end

  test "one strike" do
    score = Bowling.score([10, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    assert score == 24
  end

  test "perfect game" do
    score = Bowling.score([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10])
    assert score == 300
  end

  test "nines" do
    score = Bowling.score([9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0])
    assert score == 90
  end

  test "calculates score for a game with all spares" do
    assert Bowling.score([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]) ==
             150
  end

  test "9th frame Strike and 10th has points" do
    assert Bowling.score([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 3, 4]) == 24
  end

  test "More cases" do
    assert Bowling.score([6, 2, 6, 2, 2, 5, 5, 5, 0, 9, 9, 0, 6, 4, 10, 0, 0, 0, 0]) == 81
    assert Bowling.score([6, 2, 6, 2, 2, 5, 5, 5, 0, 9, 9, 0, 6, 4, 10, 5, 2, 9, 1, 8]) == 113
    assert Bowling.score([8, 0, 3, 0, 9, 0, 1, 3, 5, 2, 1, 4, 1, 6, 10, 2, 8, 5, 5, 1]) == 89
    assert Bowling.score([9, 0, 4, 3, 5, 4, 6, 4, 5, 4, 4, 4, 8, 0, 7, 3, 1, 7, 4, 2]) == 90
    assert Bowling.score([8, 2, 5, 0, 2, 6, 0, 7, 6, 3, 0, 10, 2, 5, 3, 0, 3, 2, 8, 2, 4]) == 85
    assert Bowling.score([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 20
    assert Bowling.score([10, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 24
    assert Bowling.score([5, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 16
    assert Bowling.score([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]) == 150

    assert Bowling.score([0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0]) ==
             100

    assert Bowling.score([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]) == 300
    assert Bowling.score([9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0]) == 90
    assert Bowling.score([6, 2, 6, 2, 2, 5, 5, 5, 0, 9, 9, 0, 6, 4, 10, 0, 0, 0, 0]) == 81
    assert Bowling.score([6, 2, 6, 2, 2, 5, 5, 5, 0, 9, 9, 0, 6, 4, 10, 5, 2, 9, 1, 8]) == 113
    assert Bowling.score([8, 0, 3, 0, 9, 0, 1, 3, 5, 2, 1, 4, 1, 6, 10, 2, 8, 5, 5, 1]) == 89
    assert Bowling.score([9, 0, 4, 3, 5, 4, 6, 4, 5, 4, 4, 4, 8, 0, 7, 3, 1, 7, 4, 2]) == 90
    assert Bowling.score([8, 2, 5, 0, 2, 6, 0, 7, 6, 3, 0, 10, 2, 5, 3, 0, 3, 2, 8, 2, 4]) == 85
    assert Bowling.score([10, 7, 3, 9, 0, 10, 0, 8, 8, 2, 0, 6, 10, 10, 10, 8, 1]) == 167
    assert Bowling.score([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 3, 4]) == 24
  end
end
