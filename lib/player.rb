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