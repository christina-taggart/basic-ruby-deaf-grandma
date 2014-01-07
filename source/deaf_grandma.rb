# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
def deaf_grandma
  user_input = gets.chomp
  while user_input != "I love ya, Grandma, but I've got to go."
    puts user_input != user_input.upcase ? "HUH?! SPEAK UP, SONNY!" : "NO, NOT SINCE 1983!"
    user_input = gets.chomp
  end
end

# Run our method
deaf_grandma
