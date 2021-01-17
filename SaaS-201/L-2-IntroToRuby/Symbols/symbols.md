# Symbols:

Symbol is a Ruby datatype that is similar to strings but has a few properties that makes them an ideal data type for referring to constant values.

```rb
:completed
:pending
:ruby
:new
```

Unlike strings, symbols are unique and they refer to the same object whenever they are used.

The :hello symbol is identified by the object id 2035548 no matter how many times it’s used.

- A string can be converted to a symbol using to_sym method

```rb
“hello”.to_sym
=> :hello

"world".to_sym
=> :world
```

- Symbols are immutable. In a sense symbols are more like integers than strings. They are immutable, unique and also immediate. A variable to which a symbol is bound provides the actual symbol not a reference to it.

- Symbols are also useful as method arguments

- Symbols are useful as keys in a hash
