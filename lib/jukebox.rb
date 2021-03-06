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

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  puts songs.join
end

def play(songs)
  puts "Please enter a song name or number:"
  uInput = gets.chomp

  songs.each_with_index do |song,index|
    if uInput == (1 + index).to_s || uInput == song
      puts song
    end
  end
  
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp

    if input == "help"
      help()
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    end
    
  end
  puts exit_jukebox
end