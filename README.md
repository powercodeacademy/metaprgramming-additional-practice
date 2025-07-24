# Square Classification Lab

## Learning Goals

- Define a custom error class and use it
- Work with geometric properties and validation

## Instructions

Write a `Square` class that accepts four arguments on initialization. Each
argument is a length of one of the four sides of the quadrilateral.

Define an instance method, `#kind` that returns, as a symbol, its
type. The valid types are:

- `:square` - all sides equal
- `:rectangle` - opposite sides equal
- `:quadrilateral` - any valid four-sided figure

The `#kind` method should raise a custom error, `SquareError` if the quadrilateral
is invalid. Check out the hint below to understand what makes a quadrilateral valid.

Write a custom error class, `SquareError` and inherit it from `StandardError`.
This custom error class should be defined in the same file as the `Square`
class, inside the `Square` class definition, like this:

```ruby
# lib/square.rb

class Square
  # square code

  class SquareError < StandardError
    # square error code
  end
end
```

**Note**: Several of the tests will be looking for the `SquareError` to be
raised. If you implement a `rescue` for it, however, the tests will not
recognize that the error was raised. For purposes of this lab, therefore, you
should not include a `rescue`.

## Identifying Valid Quadrilaterals

A valid quadrilateral must meet the following criteria:

- Each side must be larger than 0.
- The sum of the lengths of any three sides must exceed the length of the fourth side.

## Resources

- [Exception Handling](http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/)
- [Basic Mathematics](http://www.basic-mathematics.com/) - [Types of Quadrilaterals](http://www.basic-mathematics.com/types-of-quadrilaterals.html)
