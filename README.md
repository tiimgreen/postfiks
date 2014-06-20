# Postfix
**Postfix** is an implementation of the [reverse Polish notation](http://en.wikipedia.org/wiki/Reverse_Polish_notation) (using [stacks](http://en.wikipedia.org/wiki/Stack_(data_structure))) in the form of a parser which tokenizes the expression and then evaluates it.

```ruby
require 'postfix'

'2 2 +'.postfix
 # => 4.0

'30 2 * 3 3 * +'.postfix
 # => 69.0

'2 2 + 5.51 * 2 - 12 *'.postfix
 # => 240.48
```
