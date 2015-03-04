#Eloquent Ruby

Here are some quick wins achievable in Ruby from the Eloquent Ruby book!

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
  words = %w{ this is a quick way to create an array of strings!}

  words.index( "quick" ) #returns 3
  puts words.find_index { |this_word| 'create' == this_word}

  int_array = [1,2,3,4,5,6]
  int_array.index(3) #returns 2 (it's index!)
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

##Strings
###Quote
Allows for punctuation without the need of escaping (/) you can also use {} or () or <> or [] and any other special characters such as $string in here!$ to avoid conflicts
```ruby
  str = %q{"stop", she said, "I can't live without 's and s."}
  #uppercase Q equates to "" allowing #{foo}
  foo = 'john'
  str = %Q{"Hi" he said, "my name is #{foo}. What is your name?"}
```

###Multi-line
Able to create strings with a new line by using the return key (becareful of indentations that will equal to whitespace)
```ruby
  a_multiline_string = "a multi-line
  string"
  puts another_one = %q{another multi-line
  string}
```

###Here Document
Couldn't get this one to work
```ruby
heres_one = <<EOF
This is the beginning of my here document.
And this is the end.
EOF
```

###Strip
Takes off any whitespace at the start and end of the string
```ruby
  ' hello '.strip #will return 'hello'
```

###Chomp
Take off the return character at the end of a string (useful for user input)
```ruby
  "hello\n".chomp #will return "hello"
```

###Sub
Substitute the first instance of a string with another string
```ruby
  'It is warm outside'.sub( 'warm', 'cold') #will return 'It is cold outside'
```

###GSub
Substitute all instances of a string with another string
```ruby
  'yes yes'.gsub( 'yes', 'no' ) #will return 'no no'
```

###Split
Returns an array with elements of word as strings
```ruby
  'It was a dark and storm night'.split
  'Bill:Shakespeare:Playwright:Globe'.split( ':' )
```

###Exlaimation Point
Will change the original string instead of returning an instance of it
```
  title = 'It was a dark and stormy night'
  title.sub!( 'dark', 'bright' )
  title.sub!( 'stormy', 'clear' )
  puts title #'It was a bright and clear night'

```

###Each
Iterates through a string returning each char
```ruby
  author = 'Clarke'
  author.each_char { |c| puts c }
```

###Ranges
Return more then one char in a string using index
```ruby
  "abcde"[3] #returns 'd'
  "abcde"[3..4] #returns 'de'
```
