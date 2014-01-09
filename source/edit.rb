def deaf_grandma
  response = ""
  prev_response = ""
  while response != "\n" && prev_response != "\n"
    prev_response = response
    puts "Say something to Grandma:"
    response = gets

    if response.chomp == "I love ya, Grandma, but I've got to go."
      puts "OK, goodbye!"
      break
    elsif response.chomp == response.chomp.upcase
      puts "NO, NOT SINCE 1983!"
    # elsif response == "\n"
    #   # do nothing
    elsif response != "\n"
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end

end

# Run our method
deaf_grandma
