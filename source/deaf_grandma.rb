# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
class Grandma

  def initialize(name)
    @name = name
    @previous_input = nil
  end

  def deaf_grandma
    puts "Say something to grandma:"
    input = gets.chomp!
    if input == "I love ya, Grandma, but I've got to go." || (input == "" && @previous_input == "")
      puts "Grandma leaves the room."
    elsif input != input.upcase
      puts "HUH?! SPEAK UP, SONNY!"
      @previous_input = input
      deaf_grandma
    else #yes shouting, but input is not specific phrase
      puts "NO, NOT SINCE 1983!"
      @previous_input = input
      deaf_grandma
    end
  end

end

# Run our method
grandma = Grandma.new("grandma")
grandma.deaf_grandma