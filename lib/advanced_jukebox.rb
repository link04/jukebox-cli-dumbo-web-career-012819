#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
<<<<<<< HEAD
 "Go Go GO" => '/Users/maximoBautista/Development/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/maximoBautista/Development/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/02.mp3',
 "Hamburg" =>'/Users/maximoBautista/Development/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/maximoBautista/Development/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/maximoBautista/Development/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/maximoBautista/Development/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/maximoBautista/Development/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/07.mp3'
=======
 "Go Go GO" => 'home/incredible-tree-9522/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'home/incredible-tree-9522/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'home/incredible-tree-9522/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'home/incredible-tree-9522/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/04.mp3',
 "Wolf" => 'home/incredible-tree-9522/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/05.mp3',
 "Blue" => 'home/incredible-tree-9522/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'home/incredible-tree-9522/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/07.mp3'
>>>>>>> d39f3dc31733c5a53d135eaede6ff398c4ca9bca
 }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(my_songs)
  my_songs.each_key do |name|
    puts name
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  user_request = gets.chomp
    if my_songs.has_key? user_request
      system "open #{my_songs[user_request]} "
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  case user_response
  when "list"
    list(my_songs)
  when "play"
    play(my_songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
  end
end
