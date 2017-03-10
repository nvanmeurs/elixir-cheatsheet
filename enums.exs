## Enum (collections) methods

## Enum.all?
## JS equivalent Array.every
Enum.all?([1, 2, 3, 4], fn (s) -> rem(s, 2) === 1 end)
# returns false

## Enum.any?
## JS equivalent Array.some
Enum.any?([1, 2, 3, 4], fn (s) -> rem(s, 2) === 1 end)
# returns true

## Enum.chunk
## JS equivalent ???
Enum.chunk([1, 2, 3, 4, 5, 6], 2)
# returns [[1, 2], [3, 4], [5, 6]]

## Enum.each
## JS equivalent Array.each
Enum.each(["Hello", "Every", "one"], fn (s) -> IO.puts(s) end)
# prints:
  # Hello
  # Every
  # one

## Enum.map
## JS equivalent Array.map
Enum.map([2, 5, 3, 6], fn (a) -> a * 2 end)
# or
Enum.map([2, 5, 3, 6], &(&1 * 2))
# returns [4, 10, 6, 12]

## Enum.reduce
## JS equivalent Array.reduce
Enum.reduce([1, 2, 3, 4], 5, fn (x, accum) -> x + accum end)
# returns 15

Enum.reduce([1, 2, 3, 4], fn (x, accum) -> x + accum end)
# returns 10

## Enum.uniq_by (removes duplicate entries)
## JS equivalent ???
Enum.uniq_by([1, 2, 2, 3, 3, 3, 4, 4, 4, 4], fn x -> x end)
# returns [1, 2, 3, 4]