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
  grandchild = gets.chomp

  until grandchild == "I love ya, Grandma, but I've got to go."
    if grandchild.upcase != grandchild
      puts "HUH?! SPEAK UP, SONNY!"
    else
      puts "NO, NOT SINCE 1983!"
    end
    grandchild = gets.chomp
  end

  puts "BYE SONNY!"
end

# Run our method
deaf_grandma




=begin
1. She can only hear you if you shout at her.
2. If you say something but don't shout, she'll shout right back: "HUH?! SPEAK UP, SONNY!"
3. If you do shout you're also out of luck, because she'll misunderstand you and shout back "NO, NOT SINCE 1983!"
4. She won't let you leave the room unless you say, politely, "I love ya, Grandma, but I've got to go." She may be deaf, but she can smell rude a mile away.


grandchild.upcase == grandchild

| "Real" world                          | Code world    |
| -------------                         | ------------- |
| Starting a conversation with Grandma  | Running the program via the command line |
| Speaking to your Grandma              | Reading a line of user input with the [gets method](http://www.ruby-doc.org/docs/Tutorial/part_02/user_input.html). |
| Grandma speaking to you               | Printing a line to the console using the [puts method](http://www.ruby-doc.org/core-1.9.3/IO.html#method-i-puts). |
| Shouting                              | Either entering or printing text IN ALL CAPS, depending on who is speaking. |
| Leaving the conversation              | Exiting the program |

=end