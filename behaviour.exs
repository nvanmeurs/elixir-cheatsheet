## Behaviour, similar to interface

defmodule GreetBehaviour do
    @callback say_hello(name :: string) :: nil
    @callback say_bye(name :: string) :: nil
end

defmodule EnglishGreet do
    @behaviour GreetBehaviour
    def say_hello(name), do: IO.puts("Hello " <> name)
    def say_bye(name), do: IO.puts("Goodbye, " <> name)
end

defmodule SpanishGreet do
    @behaviour GreetBehaviour
    def say_hello(name), do: IO.puts("Hola " <> name)
    def say_bye(name), do: IO.puts("Adios " <> name)
end

EnglishGreet.say_hello("Ayush")     # prints "Hello Ayush"
EnglishGreet.say_bye("Ayush")       # prints "Goodbye, Ayush"
SpanishGreet.say_hello("Ayush")     # prints "Hola Ayush"
SpanishGreet.say_bye("Ayush")       # prints "Adios Ayush"