require "pry"
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

=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end



def help
  string = "
  I accept the following commands:\n
- help : displays this help message \n
- list : displays a list of songs you can play\n
- play : lets you choose a song to pl\n
- exit : exits this program"

puts string
end


def play(songs)
  number_array = []
  songs.each_index do |i|
  number_array.push(i+1)
  end
  puts "Please enter a song name or number: "
  entered_song = gets.chomp


  if songs.include?(entered_song)
    puts "Playing #{entered_song}"
  elsif number_array.include?(entered_song.to_i)
    puts "Playing #{songs[entered_song.to_i-1]}"
  else 
    puts "Invalid input, please try again"
  
  end
end
    


#may need to return to this - I'm not sure the test isn't  working in the browser

def list(songs)
  songs.each_index do |i|
    puts "#{i+1} #{songs[i]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command: "
  entered_command = gets.chomp
  if entered_command == "list"
    list
    run(songs)
  elsif entered_command == "play"
    play
    run(songs)
  elsif entered_command == "help"
    help
    run(songs)
  elsif entered_command == "exit"
    exit_jukebox
  end
end
