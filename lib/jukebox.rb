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

def help()
puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program\n"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}\n"
  end
end

def play(songs)
  puts "Please enter a song name or number:\n"
  user_input = gets.chomp
  if songs.include?(user_input) == true
    puts "Playing #{user_input}\n"
  elsif user_input.to_i.between?(1,9) == true
    puts "Playing #{songs[user_input.to_i-1]}\n}"
  else
    puts "Invalid input, please try again\n"
  end
end

def exit_jukebox()
  puts "Goodbye\n"
  return
end

def run(songs)
  help()
  command()
end

def command()
  puts "Please enter a command:\n"
    command = gets.chomp
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox()
    else
      command()
    end
end
