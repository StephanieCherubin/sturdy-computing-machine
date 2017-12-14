puts "WELCOME TO BATMAN: WYNCODE ASYLUM"
puts "-" * 70
puts "        __.--'\\     \\.__./     /'--.__
    _.-'       '.__.'    '.__.'       '-._
  .'                                      '.
 /                                          \\
|                                            |
|                                            |
 \\         .---.              .---.         /
  '._    .'     '.''.    .''.'     '.    _.'
     '-./            \\  /            \\.-'
                      ''mrf"
puts "-" * 70
puts "After all your hard work, you've become the batman!"
puts "Who will you choose as your sidekick: Batgirl OR Robin"

sidekick_choice = gets.chomp.downcase

if sidekick_choice == "robin"
  puts "Robin: Holy rusted metal, Batman!"
elsif sidekick_choice == "batgirl"
  puts "Batgirl: Suit me up, Alfred!"
else
  puts "OK. Well I guess Robin is your sidekick..."
  puts "Robin: Holy rusted metal, Batman!"
  sidekick_choice = "robin"
end
sidekick_choice.capitalize!



puts "Awesome! What weapon will #{sidekick_choice} be using today:"
puts "Batarang, Fists, Flashlight"

weapon = gets.chomp.downcase
case weapon
when "batarang"
  puts "#{sidekick_choice}: wHOA! A batarang! Thanks Bman."
when "fists"
  puts "#{sidekick_choice}: They not ready. For these guns..."
when "flashlight"
  puts "#{sidekick_choice}: Uh.... thanks? I guess I'll blind them to death!"
else
  puts "#{sidekick_choice}: That's an interesting choice... but I think I'll stick with the batarang!"
  weapon = "batarang"
end


puts "Who shall we fight first:"
valid_enemies = ["joker", "bane", "penguin", "mr. frost", "riddler"]
puts valid_enemies.map(&:capitalize).join(", ")
villain = gets.chomp.downcase

until valid_enemies.include? villain
  puts ["Como?", "Que?", "Huh?", "Eh?"].sample
  puts "That's not a real person, please try again. Valid options include:"
  puts valid_enemies.map(&:capitalize).join(", ")
  villain = gets.chomp.downcase
end

case villain
when "joker"
  puts "Joker: HAHAHAHAHAHA... HAHA."
when "bane"
  puts "Bane: I was born. in. the. darkness."
when "penguin"
  puts "Penguin: Rweh. rweh. rweh. Check out my tux."
when "mr. frost"
  puts "Mr. Frost: Ill be back!"
when "riddler"
  puts "Riddler: Puzzle me this.. Batman & #{sidekick_choice}"
else
  puts "HOW DID THIS HAPPEN?"
end

villain_life_points = {
  "joker" => 12,
  "riddler" => 10,
  "bane" => 20,
  "penguin" => 30,
  "mr. frost" => 15
}

batman_life_points = 50
batman_moves = {
  "punch" => 4,
  "kick" => 10,
  "kiss" => -4,
  "uppercut" => 15
}

villain_moves = [7, 19, 1]

until batman_life_points <= 0 || villain_life_points[villain] <= 0
  puts "Batman, what move will you use:"
  puts batman_moves.keys.join(", ")
  fight_move = gets.chomp.downcase
  until batman_moves.keys.include? fight_move
    puts "Batman, what move will you use:"
    puts batman_moves.keys.join(", ")
    fight_move = gets.chomp.downcase
  end
  puts "Batman: Pow!"
  villain_life_points[villain] -= batman_moves[fight_move]
  puts "*" * 20
  puts "You took #{batman_moves[fight_move]} points off the villains life."
  puts "#{villain.capitalize}: Ha! I've still got #{villain_life_points[villain]} life points.."
  puts "*" * 20
  villain_move = villain_moves.sample
  puts "#villian"
end
