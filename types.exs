# NOTE: Everything is truthy except false and nil

## This is a comment
IO.puts "Hello world"

## Binary string (UTF-8)
my_string = "Hello world"
my_multiline_string = """
  Hello I'm a multiline string
"""
is_binary(my_string) # returns true

## Char list
my_char_list = 'hello world'

## numbers
my_integer = 3
my_float = 0.55
my_hex = 0x255
my_octal = 0o52
my_binary = 0b011

## Atom (value same as name)
my_atom = :ok

## Boolean
my_bool = true

## Binaries
my_binary = <<65, 68, 75>>

## List (Fast deletion / insertion because of LinkedList implementation)
my_list = [:ok, 123, "Hi"]

## Tuple (Same as list but different implementation, fast read)
my_tuple = {:ok, 123, "Hi"}

## Printing variables (these are the same)
IO.puts my_string
IO.puts(my_string)
my_string |> IO.puts