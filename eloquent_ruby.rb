module EloquentRuby

  class FancyIfElse
    #fancy if/else
    #if morning is true then 'good morning', else 'good evening'
    morning = true
    greetings = morning ? 'Good morning!' : 'Good Evening!'
    puts greetings
  end

  class QuickStringArray
    str_array = %w{ this is a quick way to create an array of strings!}
    str_array.each { |str| puts str }
  end
end
