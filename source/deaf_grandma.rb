# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
def deaf_grandma
  response = ""
  while true
  prev_response = response
  puts "Say something to Grandma:"
  response = gets
    if response == "\n" && prev_response == "\n"
      return
    end

    if response.chomp == "I love ya, Grandma, but I've got to go."
      puts "OK, goodbye!"
      return
    elsif response.chomp == response.upcase
      puts "NO, NOT SINCE 1983!"
    elsif response == "\n"
      # do nothing
    elsif
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end

end

# Run our method
deaf_grandma
