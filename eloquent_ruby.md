#Eloquent Ruby

Here are some quick wins achieveable in Ruby from the Eloquent Ruby book!

##IfElse
```ruby
  #fancy if/else
  #if morning is true then 'good morning', else 'good evening'
  morning = true
  greetings = morning ? 'Good morning!' : 'Good Evening!'
  puts greetings
```

##Collections
###Quick String Array
```ruby
  words = %w{ this is a quick way to create an array of strings!}
  words.each { |word| puts word }
```

###Find Index
Returns the index at which the 'word' was found
```ruby
  returns the index at which the 'word' was found
  words = %w{ this is a quick way to create an array of strings!}
  puts words.find_index { |this_word| 'create' == this_word}
```

###Map
Map block returns a separate array 'words' array does not get affected
```ruby
  words = %w{ this is a quick way to create an array of strings!}
  puts words.map { |word| word.size }
  puts words.map { |word| word.upcase }
```

###Inject
Inject accepts a parameter, the return of inject will be passed into the next loop until it has ran out of elements
```ruby
  words = %w{ this is a quick way to create an array of strings!}
  puts words.inject(0.0){ |result, word| word.size + result }
```

###Sort
Remember, the Ruby convention is that an exclamation point at the end of a method name indicates that the method is the dangerous or surprising version of a pair of methods
```ruby
words = %w{ this is a quick way to create an array of strings!}
words.sort #this will not change the array, but will return a sorted version of it
words.sort!#this will actually change the array!
```