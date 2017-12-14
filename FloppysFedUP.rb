puts <<-'EOF'
 _____ _     ___  ____  ______   ___ ____     _____ _____ ____     _   _ ____
|  ___| |   / _ \|  _ \|  _ \ \ / ( ) ___|   |  ___| ____|  _ \   | | | |  _ \
| |_  | |  | | | | |_) | |_) \ V /|/\___ \   | |_  |  _| | | | |  | | | | |_) |
|  _| | |__| |_| |  __/|  __/ | |    ___) |  |  _| | |___| |_| |  | |_| |  __/
|_|   |_____\___/|_|   |_|    |_|   |____/   |_|   |_____|____/    \___/|_|
EOF
puts "
press any key to start"

start = gets
puts "Floppy's Fed Up-- By Stephanie Cherubin"

puts "
Hi, I'm Floppy, your pet bunny!"

start = gets

puts "What's your name?"
name = gets.chomp

puts "
Hi #{name}! I've been waiting on you all day!"

start = gets

puts "Feeding me will increase my “fullness” level and
playing with me will increase my “happiness” level"

start = gets

puts "What would you like to do first?
'Feed me' or 'play with me.'"
puts "---------------------------------------------------"

first_option = gets.chomp.downcase
case first_option
when "feed me"
  puts "---------------------------------------------------"
  puts "I'm already full!
  Choose something else.
  Play with me or Ignore me
  "
  puts "---------------------------------------------------"

    second_option = gets.chomp.downcase
    case second_option
    when "play"
      puts "---------------------------------------------------"
      puts "Yay! I love to have fun! This is fun!!
      Choose another option:
      Play with me or ignore me"
      puts "---------------------------------------------------"

        third_option = gets.chomp.downcase
        case third_option
        when "play with me"
          puts "
          Aw, you're such a good friend!
          I love to have fun!
          My happiness rating just went up to 4 out of 4

          Maximum joy!"
          puts <<-'EOF'
          _   _   _   _   _   _   _     _   _   _
          / \ / \ / \ / \ / \ / \ / \   / \ / \ / \
          ( M | A | X | I | M | U | M ) ( J | O | Y )
          \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/
          EOF
          puts "
          Until next time...
          "

          else
            puts "---------------------------------------------------"
            "I'm sad now. I don't like to be ignored. "
            puts <<-'EOF'
              /| |\
             ( |-| )
              )   (
             (     )
              )   (
             /     \
            (  (*)  )
           ,-.) ___ (,-.
            ---      ---
            EOF
            puts "
            Until next time"
            puts "---------------------------------------------------"
          end

    else
      puts "---------------------------------------------------"
      "I don't like to be ignored. I'm sad now."
      puts <<-'EOF'
        /| |\
       ( |-| )
        )   (
       (     )
        )   (
       /     \
      (  (*)  )
     ,-.) ___ (,-.
      ---      ---
      EOF
      puts "
      Until next time"
      puts "---------------------------------------------------"
        second_option = gets.chomp.downcase

        case third_option
        when "g"
          puts "---------------------------------"
          puts "failed"
          puts "---------------------------------"
     end

  end
when "play with me"
  puts "Yay! My happiness rating went to 3 out of 4. This is fun!!
  Choose another option:
  Play with me or ignore me"
  fourth_option = gets.chomp.downcase
  case fourth_option
  when "play with me"
    puts "
    Aw, you're such a good friend!
    I love to have fun!
    My happiness rating just went up to 4 out of 4

    Maximum joy!"
    puts <<-'EOF'
    _   _   _   _   _   _   _     _   _   _
    / \ / \ / \ / \ / \ / \ / \   / \ / \ / \
   ( M | A | X | I | M | U | M ) ( J | O | Y )
    \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/
    EOF
    puts "
    Until next time...
    "
  when "ignore me"
    puts "I'm sad now. I don't like to be ignored. "
    puts <<-'EOF'
      /| |\
     ( |-| )
      )   (
     (     )
      )   (
     /     \
    (  (*)  )
   ,-.) ___ (,-.
   \__/      \_/
    EOF
    puts "
    Until next time"
  end
else
  puts "---------------------------------------------------"
  puts "Alrighty you couch potato, don't do anything."
  puts "---------------------------------------------------"
end
