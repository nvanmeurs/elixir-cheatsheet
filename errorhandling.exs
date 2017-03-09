## Error handling

## Errors
IO.puts(1 + "Hello")
  # -> ** (ArithmeticError) bad argument in arithmetic expression
  # -> :erlang.+(1, "Hello")

# Raise error with message
raise "oops"
  # -> ** (RuntimeError) oops

# Raise error with type and message
raise ArgumentError, message: "invalid argument foo"
  # -> ** (ArgumentError) invalid argument foo


## Custom error types
defmodule MyError do
    defexception message: "default message"
end

raise MyError
  # -> ** (MyError) default message

raise MyError, message: "custom message"
  # -> ** (MyError) custom message

## Rescueing errors
err = try do
    raise "oops"
rescue
    e in RuntimeError -> e
end

IO.puts(err.message)    # prints oops

err = try do
    1 + "Hello"
rescue
    RuntimeError -> "You've got a runtime error!"
    ArithmeticError -> "You've got a arithmetic error!"
end

IO.puts(err)           # prints You've got a arithmetic error!

## Throws
val = try do
  Enum.each 20..100, fn(x) ->
    if rem(x, 13) == 0, do: throw(x)
  end
  "Got nothing"
catch
  x -> "Got #{x}"
end
# returns Got 26

## Exit
# Hard exit
spawn_link fn -> exit(1) end

# Prevent exit
val = try do
    exit "I am exiting"
catch
    :exit, _ -> "not really"
end
# returns not really

## After
{:ok, file} = File.open "sample", [:utf8, :write]
try do
  IO.write file, "olá"
  raise "oops, something went wrong"
after
  File.close(file)
end