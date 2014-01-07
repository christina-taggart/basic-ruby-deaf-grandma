# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
def deaf_grandma
  input = "input"
  space_counter = 0
  until input == "I love ya, Grandma, but I've got to go." || (input == "" && space_counter == 2)
    input = gets.chomp
    if input == "I love ya, Grandma, but I've got to go."
      puts "BYE BYE!"
    elsif input.upcase != input
      puts "HUH?! SPEAK UP, SONNY!"
    elsif input.upcase == input && input != ""
      puts "NO, NOT SINCE 1983!"
    end

    if input != ""
      space_counter = 0
    elsif input == ""
      space_counter += 1
    end
  end
end

# Run our method
deaf_grandma
