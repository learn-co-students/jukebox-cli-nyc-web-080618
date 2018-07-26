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
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Which song would you like to hear?"
  songs.each_with_index do |song, index|
    puts "#{index + 1}—#{song}"
  end
  puts "Which one?"
  song_request = gets.chomp
  song_number = song_request.to_i
  if song_number == 0 # the song was provided as a string
    if songs.include?(song_request)
      puts "Playing song #{song_request}"
    else
      puts "Invalid input, please try again"
      puts
      # play(songs)
    end
  else # the song was provided as a number
    if song_number <= songs.length
      puts "Playing song #{songs[song_number - 1]}"
    else
      puts "Invalid input, please try again"
      puts
      # play(songs)
    end
  end
end

def list(my_songs)
  my_songs.each_with_index{|song, index| puts "#{index + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when 'play'
      play(songs)
    when 'help'
      help
    when 'list'
      list(songs)
    when 'exit'
      break
    end
  end
  exit_jukebox
end

