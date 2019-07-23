class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        "#{name} a #{life_points} hp !"
    end

    def gets_damage(damages)
        @life_points = @life_points - damages

        if @life_points <= 0
"
                                                                                 -|-
                                                                                  |
                                                                              .-'~~~`-.
                                                                            .'         `.
                                                                            |  R  I  P  |
                                                                            |   #{name}    |
                                                                            |           |
                                                                            |           |
                                                                        ^^^^^^^^^^^^^^^^^^^^^^
 "
        end
    end

    def compute_damage
        return rand(1..6)
    end

    def attacks(attacked_player)
        damage = compute_damage
        puts "#{@name} attaque #{attacked_player.name} ! Il inflige #{damage} dégats !"
        attacked_player.gets_damage(damage)
    end
end

class HumanPlayer < Player
    attr_accessor :name, :weapon_level

    def initialize(name)
        @weapon_level = 1
        super(name)
        @life_points = 100
    end

    def show_state
        "#{@name} a #{@life_points} et une arme de niveau #{@weapon_level}"
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        weapon_lvl = rand(1..6)
        "Tu as trouvé une arme de niveau #{weapon_lvl} !"
        if @weapon_level < weapon_lvl
            @weapon_level = weapon_lvl
            "Youhou elle est meilleure que ton arme actuelle ! [tu la prend]"
        else
            "M@#*$... elle n'est pas mieux que ton arme actuelle ! [tu lui crache dessus]"
        end
    end
    
    def search_health_pack
        dé = rand(1..6)
        if dé == 1
            "Tu n'as rien trouvé..."
        elsif dé == [2..5]
            "Bravo tu as trouvé un pack de +50 de vie !"
            @life_points = @life_points + 50
            if @life_points > 100
                @life_points = 100
            else
                @life_points = @life_points
            end
        else
            "Waow ! tu as trouvé un pack de +80 de vie !"
            @life_points = @life_points + 80
            if @life_points > 100
                @life_points = 100
            else
                @life_points = @life_points
            end
        end
    end
end