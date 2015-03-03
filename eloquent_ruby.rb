module IfElse
  class FancyIfElse
    #fancy if/else
    #if morning is true then 'good morning', else 'good evening'
    morning = true
    greetings = morning ? 'Good morning!' : 'Good Evening!'
    puts greetings
  end
end

module Collections
  class QuickStringArray
    words = %w{ this is a quick way to create an array of strings!}
    words.each { |word| puts word }
  end

  class FindIndex
    #returns the index at which the 'word' was found
    words = %w{ this is a quick way to create an array of strings!}
    puts words.find_index { |this_word| 'create' == this_word}
  end

  class MapArray
    #map block returns a separate array 'words' array does not get affected
    words = %w{ this is a quick way to create an array of strings!}
    puts words.map { |word| word.size }
    puts words.map { |word| word.upcase }
  end

  class InjectArray
    #inject accepts a parameter, the return of inject will be passed into the next
    #loop until it has ran out of elements
    words = %w{ this is a quick way to create an array of strings!}
    puts words.inject(0.0){ |result, word| word.size + result }
  end

  class SortArray
  #Remember, the Ruby convention is that an exclamation point
  #at the end of a method name indicates that the method is the dangerous or surprising
  #version of a pair of methods
  words = %w{ this is a quick way to create an array of strings!}
  words.sort #this will not change the array, but will return a sorted version of it
  words.sort!#this will actually change the array!
  end
end

module Strings
  class Quote
    #allows for punctuation without the need of escaping (/)
    #you can also use {} or () or <> or [] and any other special characters
    #such as $string in here!$ to avoid conflicts
    str = %q{"stop", she said, "I can't live without 's and s."}
    #uppercase Q equates to "" allowing #{foo}
    foo = 'john'
    str = %Q{"Hi" he said, "my name is #{foo}. What is your name?"}
  end

  class MultiLine
    a_multiline_string = "a multi-line
      string"
    puts another_one = %q{another multi-line
      string}
  end

  class HereDocument
    #Couldn't get this one to work
  end

  class Strip
    ' hello '.strip #will return 'hello'
  end

  class Chomp
    "hello\n".chomp #will return "hello"
  end

  class Sub
    #only subs first word it finds
    'It is warm outside'.sub( 'warm', 'cold') #will return 'It is cold outside'
  end

  class GSub
    #will sub all instances of the string
    'yes yes'.gsub( 'yes', 'no' ) #will return 'no no'
  end

  class Split
    #returns an array with elements of each string
    'It was a dark and storm night'.split
    'Bill:Shakespeare:Playwright:Globe'.split( ':' )
  end

  class ExclaimationPoint
    #these will change the original string instead of returning
    title = 'It was a dark and stormy night'
    title.sub!( 'dark', 'bright' )
    title.sub!( 'stormy', 'clear' )
    puts title #'It was a bright and clear night'
  end

  class Each
    author = 'Clarke'
    author.each_char { |c| puts c }
  end

  class Ranges
    "abcde"[3] #returns 'd'
    "abcde"[3..4] #returns 'de'
  end
end
