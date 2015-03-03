module EloquentRuby
  class FancyIfElse
    #fancy if/else
    #if morning is true then 'good morning', else 'good evening'
    morning = true
    greetings = morning ? 'Good morning!' : 'Good Evening!'
    puts greetings
  end

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
    #map block returns a seperate array 'words' array does not get affected
    words = %w{ this is a quick way to create an array of strings!}
    puts words.map { |word| word.size }
    puts words.map { |word| word.upcase }
  end
end
