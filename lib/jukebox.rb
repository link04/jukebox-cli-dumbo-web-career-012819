songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_request = gets.chomp

  if user_request.to_i == 0
    if songs.include? user_request
      puts "Playing #{user_request}"
    else
      puts "Invalid input, please try again"
    end
  elsif user_request.to_i > 0 && user_request.to_i <= songs.length + 1
    puts "Playing #{songs[user_request.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  case user_response
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
  end
end







>>>>>>> d39f3dc31733c5a53d135eaede6ff398c4ca9bca
