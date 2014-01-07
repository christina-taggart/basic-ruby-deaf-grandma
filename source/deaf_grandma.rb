# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
def deaf_grandma
  input = gets.chomp
  if input == ""
    input = gets.chomp
    return if input == ""
  end

  if input.upcase.eql?(input)
    puts "NO, NOT SINCE 1983!"
  else
    puts "HUH?! SPEAK UP, SONNY!" unless input.eql?("I love ya, Grandma, but I've got to go.")
  end

  if input.eql?("I love ya, Grandma, but I've got to go.")
    return
  else
    deaf_grandma
  end
end

# Run our method
deaf_grandma
