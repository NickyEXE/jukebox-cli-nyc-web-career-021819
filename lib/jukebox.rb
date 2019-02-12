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
puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end


def list (songs)
  songs.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  if (1..(songs.length+1)).include?(request.to_i)
    puts "Playing #{songs[request.to_i-1]}"
  elsif songs.index(request) != nil
    puts "Playing #{request}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
    if input == "help"
      help
      input = gets.chomp
    elsif input == "list"
      list(songs)
      input = gets.chomp
    elsif input == "play"
      play(songs)
      input = gets.chomp
    else
      puts "Invalid input, please try again"
      input = gets.chomp
    end
  end
  exit_jukebox
end
