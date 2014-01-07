# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic
=begin
Darcey Lachtman
Emmanuel Kaunitz

This exercise was very difficult for us, we ended up creating conditions where you had to input I love ya, Grandma, but I've got to go.
as well as entering two successive empty strings to escape the program, otherwise we continued our convorsation.

the final method was to create a counter for empty strings called nil_counter
until loop that outputs the correct strings based on the "Volume" of the input and when
  I love ya, Grandma, but I've got to go. was input started checking for two empty strings.
  this loop continued until the counter == 2 and it was after the I love ya, Grandma, but I've got to go.
  statement.

=end

def deaf_grandma
  p "say something to grandma"
  input = gets.chomp
  nil_counter = 1
  until input == "I love ya, Grandma, but I've got to go."
    if input == input.upcase && input != ""
      p "NO, NOT SINCE 1983!"

    else
      p "HUH?! SPEAK UP, SONNY!"

    end


    input = gets.chomp
  end
  until nil_counter == 2
    check_what_we_just_said(input)
    if input == ""
      nil_counter += 1
    end
    input = gets.chomp
  end
end

def check_what_we_just_said(input)
  if input == input.upcase && input != ""
    p "NO, NOT SINCE 1983!"
  elsif input == "" || input == "I love ya, Grandma, but I've got to go."
  else
    p "HUH?! SPEAK UP, SONNY!"

  end
end




deaf_grandma



