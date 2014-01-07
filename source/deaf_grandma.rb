# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
def deaf_grandma
  while true
  puts "Say something to Grandma:"
  response = gets.chomp
    if response == "I love ya, Grandma, but I've got to go."
      puts "OK, goodbye!"
      return
    elsif response == response.upcase
      puts "NO, NOT SINCE 1983!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

# Run our method
deaf_grandma
