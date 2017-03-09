## Typespecs

defmodule Math do
  @spec sum (number, number) :: number
  def sum (a, b), do: a + b
end

## Custom types
defmodule FunnyCalculator do
  @type number_with_joke :: {number, String.t}

  @spec add (number, number) :: number_with_joke
  def add(x, y), do: {x + y, "You need a calculator to do that?"}

  @spec multiply (number, number) :: number_with_joke
  def multiply(x, y), do: {x * y, "It is like addition on steroids."}
end

{result, comment} = FunnyCalculator.add(10, 20)
IO.puts(result)     # 30
IO.puts(comment)    # "You need a calculator to do that?"