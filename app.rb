require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Rose")

puts "
###############################################################################################################################################################################################

                                                        ▒█████   ▄████▄  ▄▄▄█████▓ ▒█████    ▄████  ▒█████   ███▄    █ ▓█████ 
                                                        ▒██▒  ██▒▒██▀ ▀█  ▓  ██▒ ▓▒▒██▒  ██▒ ██▒ ▀█▒▒██▒  ██▒ ██ ▀█   █ ▓█   ▀ 
                                                        ▒██░  ██▒▒▓█    ▄ ▒ ▓██░ ▒░▒██░  ██▒▒██░▄▄▄░▒██░  ██▒▓██  ▀█ ██▒▒███   
                                                        ▒██   ██░▒▓▓▄ ▄██▒░ ▓██▓ ░ ▒██   ██░░▓█  ██▓▒██   ██░▓██▒  ▐▌██▒▒▓█  ▄ 
                                                        ░ ████▓▒░▒ ▓███▀ ░  ▒██▒ ░ ░ ████▓▒░░▒▓███▀▒░ ████▓▒░▒██░   ▓██░░▒████▒
                                                        ░ ▒░▒░▒░ ░ ░▒ ▒  ░  ▒ ░░   ░ ▒░▒░▒░  ░▒   ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░ ▒░ ░
                                                        ░ ▒ ▒░   ░  ▒       ░      ░ ▒ ▒░   ░   ░   ░ ▒ ▒░ ░ ░░   ░ ▒░ ░ ░  ░
                                                        ░ ░ ░ ▒  ░          ░      ░ ░ ░ ▒  ░ ░   ░ ░ ░ ░ ▒     ░   ░ ░    ░   
                                                        ░ ░  ░ ░ ░                 ░ ░        ░     ░ ░           ░    ░  ░
                                                                ░                                                             
##############################################################################################################################################################################################
"
puts ""
puts ""

while player1.life_points > 0 && player2.life_points > 0 do

puts "
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                      Voici l'état des joueurs :"


puts "                                                                      #{player1.show_state}"
puts "                                                                      #{player2.show_state}
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
"

puts ""
puts ""

puts "
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                                                                    
                                                                ███████╗██╗ ██████╗ ██╗  ██╗████████╗    ██╗██╗
                                                                ██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝    ██║██║
                                                                █████╗  ██║██║  ███╗███████║   ██║       ██║██║
                                                                ██╔══╝  ██║██║   ██║██╔══██║   ██║       ╚═╝╚═╝
                                                                ██║     ██║╚██████╔╝██║  ██║   ██║       ██╗██╗
                                                                ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚═╝╚═╝
                                                                                                            

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
"
    if player1.life_points > 0 && player2.life_points > 0
        puts "                                                         #{player2.attacks(player1)}"
    else 
        puts ""
    end

    if player2.life_points > 0 && player1.life_points > 0
        puts "                                                         #{player1.attacks(player2)}"
    else
        puts ""
    end 

puts ""
puts ""
end