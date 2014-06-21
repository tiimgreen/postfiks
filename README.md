# Postfiks [![Build Status](https://travis-ci.org/rafalchmiel/postfiks.svg?branch=master)](https://travis-ci.org/rafalchmiel/postfix) [![Coverage Status](https://img.shields.io/coveralls/rafalchmiel/postfiks.svg)](https://coveralls.io/r/rafalchmiel/postfix)
**Postfiks** is an implementation of the [reverse Polish notation](http://en.wikipedia.org/wiki/Reverse_Polish_notation) (using [stacks](http://en.wikipedia.org/wiki/Stack_(data_structure))) in the form of a parser which tokenizes the expression and then evaluates it.

```ruby
require 'postfiks'

'2 2 +'.postfix
 # => #<BigDecimal:7fad2e391a38,'0.4E1',9(18)>

'2 2 +'.postfix == 4
 # => true
```

## Quick Start
Install the latest stable version of **Postfiks** via RubyGems:

```bash
$ gem install postfiks
```

**Postfiks** provides a helper method for the `String` class, called `#postfix`. This method can be called on any String — **Postfiks** will evaluate the expression within that String and the resulting numerical value will be of type [`BigDecimal`](http://www.ruby-doc.org/stdlib-2.1.2/libdoc/bigdecimal/rdoc/BigDecimal.html).

```ruby
'30 2 * 3 3 * +'.postfix
 # => #<BigDecimal:7fad2e301690,'0.69E2',9(18)>

'30 2 * 3 3 * +'.postfix == 69
 # => true

'2 2 + 5.51 * 2 - 12 *'.postfix
 # => #<BigDecimal:7fad2ca99af8,'0.24048E3',18(36)>

'2 2 + 5.51 * 2 - 12 *'.postfix == 240.48
 # => true
```

---

*<p align="center">This project is part of my [curriculum vitæ](http://git.io/rafal) code example portfolio.</p>*
