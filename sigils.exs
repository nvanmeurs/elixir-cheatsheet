## Sigils

# Uppercase sigils do not allow interpolation and escape sequences!!!

# Supported delimiters
~r/hello/
~r|hello|
~r"hello"
~r'hello'
~r(hello)
~r[hello]
~r{hello}
~r<hello>

## Regex sigil
~r/hello/

## String sigil
~s(My string with "double" and 'single' quotes)
# -> "My string with \"double\" and 'single' quotes"

## Char list sigil
~c(this is a char list containing 'single quotes')
# -> 'this is a char list containing \'single quotes\''

## Word list sigil
~w(foo bar baz)
# -> ["foo", "bar", "baz"]

~w(foo bar baz)a
# -> [:foo, :bar, :baz]


## Custom sigil
defmodule UpcaseSigil do
  def sigil_u (string, []), do: String.upcase(string)
end

import UpcaseSigil

~u(Hello world)
# -> "HELLO WORLD"