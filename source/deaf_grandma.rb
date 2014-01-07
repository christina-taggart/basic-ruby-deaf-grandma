# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
def deaf_grandma
  puts "HI SONNY!"
  leave = 0
  polite = false
  while leave < 2
    grandchild = gets.chomp
    if grandchild == "I love ya, Grandma, but I've got to go."
      polite = true
      puts "HUH?! SPEAK UP, SONNY!"
    elsif grandchild == "" && polite == true
      leave+=1
    else
      polite = false
      are_you_shouting(grandchild)
      leave = 0
    end
  end
  puts "BYE SONNY!"
end

def are_you_shouting(grandchild)
  if grandchild.upcase != grandchild
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE 1983!"
  end
end

deaf_grandma