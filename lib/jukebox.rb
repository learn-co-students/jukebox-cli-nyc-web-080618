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
      songnumber = index + 1 
      puts "#{songnumber}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  userinput = gets.chomp
  songs.each_with_index do |song, index|
    songnumber = (index + 1).to_s
    if userinput == songnumber || userinput == song
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  userinput = " "
  until userinput == "exit"
    puts "Please enter a command:"
    userinput = gets.chomp
      if userinput == "help"
        help
      elsif userinput == "list"
        list
      elsif userinput == "play"
        play(songs)
      elsif userinput == "exit"
        exit_jukebox
      end
  end
end