# Postfix
**Postfix** is an implementation of the [reverse Polish notation](http://en.wikipedia.org/wiki/Reverse_Polish_notation) (using [stacks](http://en.wikipedia.org/wiki/Stack_(data_structure))) in the form of a parser which tokenizes the expression and then evaluates it.

```ruby
require 'postfix'

Postfix.evaluate '2 2 +'
 # => 4.0

Postfix.evaluate '30 2 * 3 3 * +'
 # => 69.0

Postfix.evaluate '2 2 + 5.51 * 2 - 12 *'
 # => 240.48
```
