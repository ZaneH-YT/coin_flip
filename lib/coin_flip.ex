defmodule CoinFlip do
  def flip() do
    if :rand.uniform(2) > 1 do
      :heads
    else
      :tails
    end
  end

  def flip_many(x) when is_integer(x) do
    for _ <- 1..x do
      flip()
    end
  end
end

defmodule Score do
  def heads_count(list) when is_list(list) do
    Enum.reduce(list, 0, fn (el, acc) ->
      if el == :heads do
        acc + 1
      else
        acc
      end
    end)
  end
end
