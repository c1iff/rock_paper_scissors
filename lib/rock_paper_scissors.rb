class String
  define_method(:beats?) do |move|
    if self === "rock" and move == "scissors"
      true
    elsif self == "scissors" and move == "paper"
      true
    elsif self == "paper" and move == "rock"
      true
    elsif self == move
      'tie'
    else
      false
    end
   end
end

define_method(:computer_player) do
  randomNum = rand(3)
  if randomNum == 0
    "rock"
  elsif randomNum == 1
    "paper"
  elsif randomNum == 2
    "scissors"
  end
end
