# Save this file to your computer so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.

# You'll probably want to write other methods, but this
# encapsulates the core Grandma logic

# while message isn't the exit message
# ask for a message
# based on the message
#   when message is not in all caps print speak up message
#   when message is in all caps print not since83 message

EXIT_MESSAGE = "I love ya, Grandma, but I've got to go."
SHOUT_MESSAGE = "NO, NOT SINCE 1983!"
SPEAK_UP_MESSAGE = "HUH?! SPEAK UP, SONNY!"
GRANDMA_LEAVES = "Grandma leaves the room."


def deaf_grandma

  message = ""
  empty_msg_counter = 0

  until message == EXIT_MESSAGE || empty_msg_counter == 2

    print "Whats up sonny? "
    message = gets.chomp
    # p input

    case message
    when ""
      empty_msg_counter += 1
    when EXIT_MESSAGE
      empty_msg_counter = 0
    when message.upcase
      empty_msg_counter = 0
      p SHOUT_MESSAGE
    else
      empty_msg_counter = 0
      p SPEAK_UP_MESSAGE
    end

  end

  p GRANDMA_LEAVES

end

# Run our method
deaf_grandma
