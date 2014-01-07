# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic

=begin

=end

def deaf_grandma
  last_command = nil
  while input = gets
    if (last_command == "\n" and input == "\n") or input == "I love ya, Grandma, but I've got to go."
      return
    elsif input.chomp == input.chomp.upcase && input != "\n"
      puts "NO, NOT SINCE 1983!"
    elsif input != "\n"
      puts "HUH?! SPEAK UP, SONNY!"
    end
    last_command = input
  end

end

# Run our method
deaf_grandma
