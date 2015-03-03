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
    word = %w{ this is a quick way to create an array of strings!}
    puts word.find_index { |this_word| 'create' == this_word}
  end
end
