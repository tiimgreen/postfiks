# Postfix [![Build Status](https://travis-ci.org/rafalchmiel/postfix.svg?branch=master)](https://travis-ci.org/rafalchmiel/postfix)
**Postfix** is an implementation of the [reverse Polish notation](http://en.wikipedia.org/wiki/Reverse_Polish_notation) (using [stacks](http://en.wikipedia.org/wiki/Stack_(data_structure))) in the form of a parser which tokenizes the expression and then evaluates it.

```ruby
require 'postfix'

'2 2 +'.postfix
 # => 4.0
```

## Quick Start
Install the latest stable version of **Postfix** via RubyGems:

```bash
$ gem install postfix
```

**Postfix** provides a helper method for the `String` class, called `#postfix`. This method can be called on any String — **Postfix** will evaluate the expression within that String.

```ruby
'30 2 * 3 3 * +'.postfix
 # => 69.0

'2 2 + 5.51 * 2 - 12 *'.postfix
 # => 240.48
```

---

*<p align="center">This project is part of my [curriculum vitæ](http://git.io/rafal) code example portfolio.</p>*
