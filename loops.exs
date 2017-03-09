## Loops
# No loops available due to Immutable types
# Instead try to use the Enum module
# In case the Enum module is not a fit for your usecase, use recursion.
# Functions are tail call optimised
defmodule Loop do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end
end

Loop.print_multiple_times("Hello", 10)  # prints "Hello" ten times