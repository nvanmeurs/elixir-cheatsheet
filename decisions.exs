a = true
guess = 46

## If statement
if a === true do
  IO.puts "a is true"
end

## If else statement
if a === true do
  IO.puts "a is true"
else
  IO.puts "a is not true"
end

## Unless statement (inverse if statement)
unless a === true do
  IO.puts "a is not true"
end

## Unless else statement (inverse if else statement)
unless a === true do
  IO.puts "a is not true"
else
  IO.puts "a is true"
end

## Cond statement (similar to if / else if / else statements)
cond do
  guess === 10 -> IO.puts "You guessed 10!"
  guess === 46 -> IO.puts "You guessed 46!"
  guess === 42 -> IO.puts "You guessed 42!"

  # true is a catch all statement, if the catch all is not provided
  # and the guess does not match any of the above conditions
  # the cond statement will raise a CondClauseError
  true         -> IO.puts "You guessed something else"
end

## Case statement (similar to switch statement)
case guess do
  43 -> IO.puts "Too low"
  44 -> IO.puts "Just a bit higher"
  45 -> IO.puts "Just a tiny tiny bit higher"
  46 -> IO.puts "Correct, you won!"
  47 -> IO.puts "Just a tiny tiny bit lower"
  48 -> IO.puts "Just a bit lower"
  49 -> IO.puts "Too high"

  # _ is a catch all statement, if the catch all is not provided
  # and the guess does not match any of the above conditions
  # the case statement will raise a CaseClauseError
  _  -> IO.puts "Not even close, try again!"
end