# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
def deaf_grandma
  begin
  	puts "(What do you say to grandma?):"
    you_say = gets.chomp!
    if is_magic_phrase?(you_say)
      puts "Ok, go away then."
    elsif !is_shouting?(you_say)
      puts "HUH?! SPEAK UP, SONNY!"
    elsif is_shouting?(you_say)
      puts "NO, NOT SINCE 1983!"
    end
  end until is_magic_phrase?(you_say)
end

def is_shouting?(phrase)
  phrase == phrase.upcase
end

def is_magic_phrase?(phrase)
  phrase == 'I love ya, Grandma, but I\'ve got to go.'
end


# Run our method
deaf_grandma

# TESTS

# p is_shouting?("hello") == false
# p is_shouting?("HELLO") == true
# p is_shouting?("Hello") == false

# p is_magic_phrase?("hello") == false
# p is_magic_phrase?("I love ya, Grandma, but I've got to go.") == true
