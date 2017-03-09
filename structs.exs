## Structs
defmodule User do
   defstruct name: "John", age: 27
end

john = %User{}                            # %User{age: 27, name: "John"}
ayush = %User{name: "Ayush", age: 20}     # %User{age: 20, name: "Ayush"}
megan = %User{name: "Megan"})             # %User{age: 27, name: "Megan"}

## Accessing structs
john.name                   # "John"
john.age                    # 27

## Updating structs
meg = %{john | name: "Meg"}