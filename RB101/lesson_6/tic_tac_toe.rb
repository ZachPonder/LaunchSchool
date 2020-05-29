require 'pry'
require 'pry-byebug'

#STARTING_PLAYER = 'choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts "You're X, Computer is O"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ", ", word = "or")
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  #OFFENSE
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  #DEFENSE
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  #5/RANDOM
  if !square
    if brd[5] == ' '
      square = 5
    else
      square = empty_squares(brd).sample
    end
  end

  system('clear')
  prompt("Computer chose #{square}.")
  brd[square] = COMPUTER_MARKER
  display_board(brd)
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_wins = 0
computer_wins = 0
tie_games = 0

loop do
  system('clear')
  board = initialize_board
  display_board(board)
  prompt("Who should go first, (p)layer or (c)omputer?")
  starting_player = gets.chomp.chars.first.downcase
  
  loop do
    if starting_player == 'p'
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    elsif starting_player == 'c'
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    else
      system('clear')
      prompt("That's not a valid choice")
      exit
    end
  end

  if someone_won?(board)
    system('clear')
    display_board(board)
    if detect_winner(board) == 'Player'
      prompt("Player won!")
      player_wins += 1
    elsif detect_winner(board) == 'Computer'
      prompt("Computer won!")
      computer_wins += 1
    end
  else
    system('clear')
    display_board(board)
    prompt("It's a tie!")
    tie_games += 1
  end

  prompt("Player: #{player_wins}, Computer: #{computer_wins}, Ties: #{tie_games}")
  prompt("Play again? (y or n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Good Bye!")
