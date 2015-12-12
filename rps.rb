RPS = [
  'Rock',
  'Paper',
  'Scissors',
]

def player_choices
  RPS.shuffle[0..1]
end

def computer_choice
  RPS.shuffle.first
end

def outcome pc, cc
  if pc == cc
    "Tie"
  elsif pc == 'Rock' && cc == 'Paper'
    "Computer Wins!"
  elsif pc == 'Rock' && cc == 'Scissors'
    "Player Wins!"
  elsif pc == 'Paper' && cc == 'Rock'
    "Player Wins!"
  elsif pc == 'Paper' && cc == 'Scissors'
    "Computer Wins!"
  elsif pc == 'Scissors' && cc == 'Rock'
    "Computer Wins!"
  elsif pc == 'Scissors' && cc == 'Paper'
    "Player Wins"
  end
end


loop do
  puts "---------------------------"
  puts "--  Rock Paper Scissors? --"
  puts "---------------------------\n\n"
  puts "Select an option:\n\n"

  choices = {}

  player_choices.each_with_index do |choice, i|
    index = i + 1
    puts "#{index}: #{choice}"
    choices[index.to_s] = choice
  end

  print "> "

  comp_choice = computer_choice
  player_choice = gets.chomp

  if ![1,2].include? player_choice.to_i
    puts "Invalid option\n\n"
    next
  end

  puts "#{choices[player_choice]} vs #{comp_choice}\n"
  puts outcome(choices[player_choice], comp_choice)
  puts "\n"
end
