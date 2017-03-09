## Anonymous function
sum = fn (a, b) -> a + b end
sum.(3, 4)    # returns 7

## Anonymous function using the capture operator
sum2 = &(&1 + &2)
sum2.(3, 4)   # returns 7

## Pattern matching function
greet = fn
  {first_name}            -> IO.puts "Hello #{first_name}"
  {first_name, last_name} -> IO.puts "Hello #{first_name} #{last_name}"
  _                       -> IO.puts "Hello"
end

greet.()                      # prints "Hello"
greet.({"Nicky"})             # prints "Hello Nicky"
greet.({"Nicky", "Ykcin"})    # prints "Hello Nicky Ykcin"

## Named functions (only inside a module)
defmodule Math do
  def sum (a, b) do
    a + b
  end
end

Math.sum(3, 4)    # returns 7

# shorthand
defmodule Math2 do
  def sum (a, b), do: a + b
end

# private functions / default parameters
defmodule MyModule do
  def greet (name \\ "Anon"), do: phrase() <> name

  defp phrase, do: "Hello"
end

# recursive functions
defmodule ListHelpers do
  def print ([]) do
  end

  def print ([head | tail]) do
    IO.puts head
    print tail
  end
end

ListHelpers.print([1, 2, 3]) # Prints every item in the list