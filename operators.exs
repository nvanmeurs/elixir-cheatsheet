## Arithmetic operators
sum = 1 + 2
substract = 3 - 1
multiply = 2 * 2
divide_float = 10 / 2         # returns 5.0
divide_integer = div(10 / 2)  # returns 5
remainder = rem(5 / 2)

## Comparison operators (Similar to JS)
lt  = 1 < 2
le  = 1 <= 2
gt  = 1 > 2
ge  = 1 >= 2
eq  = 1 == "1"
ne  = 1 != "2"
seq = 1 === 1
sne = 2 !== "2"

## Logical operators

# Strict (first condition must always be boolean)
x = true or 123
y = true and 123
z = not true

# Non-strict
x = 123 || 1234
y = 123 && 1234
z = !123

## Bitwise Operators (requires Bitwise module)
use Bitwise
bit_and = 5 &&& 6   # returns 4
bit_or  = 5 ||| 6   # returns 7
right   = 5 >>> 6   # returns 0
left    = 5 <<< 6   # returns 320
bit_xor = 5 ^^^ 6   # returns 3
bit_not = 5 ~~~ 6   # returns -6

## Misc operators

# String concatenation
str = "Hello" <> " " <> "World."

# Match and Pin
 a = 1    # assignment
 1 = a    # matching
^a = 1    # matching using the Pin operator to prevent assignment

# Pipe (like bash pipe)
(3 * 4) |> IO.puts    # prints 12

# String match (and regex)
"nvanmeurs" =~ "van"        # returns true
"nvanmeurs" =~ ~r/[a-z]*/   # returns true
"nvanmeurs" =~ ~r/[0-9]*/   # returns false

# String interpolation
name = "nvanmeurs"
greeting = "Hello, #{name}"

# Codepoint (works for escape sequences too)
?a      # returns 97
?\s     # returns 32

# Capture `&` see functions.exs

# Ternary
a = if true, do: "True!", else: "False!"

# In
:yes in [:true, :false, :yes]

## Pattern matching

# Extracting variables from a structure / substructure

[{name}, age, city] = [{"Nicky"}, 22, "Rijswijk"]
# name = "Nicky"
# age = 22
# city = "Rijswijk"

# Ignore values by using _
[_, _, [_, {a}]] = [true, false, [1, {123}]]
# a = 123


## List concatenation (It's faster to prepend)
my_list = [1, 2, 3, 4, 5]
new_list = [6, 7] ++ my_list   # returns [6, 7, 1, 2, 3, 4, 5]


## List substraction
[1,2,2,3,2,3] -- [1,2,3,2] # returns [2, 3]

## List head/tail
hd my_list    # returns 1
tl my_list    # returns [2, 3, 4, 5]
# does the same as:
[h|t] = my_list