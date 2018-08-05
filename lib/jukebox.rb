require 'pry'


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
  songs.each_with_index do |song, index|
    #binding.pry
      index+=1
        puts "#{index}. #{song}"
  end
end



def play(songs)
  puts "Please enter a song name or number:"
    users_input = gets.chomp
  songs.each_with_index do |song, index|
    #binding.pry
      if users_input == song
        puts "Playing <#{song}>"
      elsif users_input.size <=1 && song == songs[users_input.to_i-1]
        puts "Playing <#{song}>"
      else
        puts "Invalid input, please try again"
      end
  end
end



def exit_jukebox
  puts "Goodbye"
end



def run(songs)
  help
  users_input = ""
  
  while users_input
    puts "Please enter a command:"
    users_input = gets.chomp
      case users_input
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      puts "Not a valid response."
    end
  end
end