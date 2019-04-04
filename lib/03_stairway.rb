def launch_dice
    @face_de = (rand(1 .. 6).to_i)
    puts "la valeur de ton dé est #{@face_de}"
end

def avancer

    launch_dice

    if @face_de == 5 || @face_de == 6
        @position += 1
        puts "en avant, étape #{@position}."
    end
    if @face_de == 2 || @face_de == 3 || @face_de == 4
        puts "ca reste à la même étape #{@position}."
    end
    if @face_de == 1
        if @position == 0
            @position = 0
            puts "ca reste à la même étape  #{@position}."
        end
        if @position > 0
            @position = @position - 1
            puts "ah dommage, tu recules d'une place #{@position}."
        end
    end
end


def jouer

    @position = 0
    i = 0
    while @position < 10
        puts "
        écrire 't'pour lancer le dé."
        cmd = gets.chomp
        if cmd == 't'
            puts " "
            avancer
            i += 1
        else
            puts "mauvaise manipulation!"
        end
    end
    if @position == 10
        puts " super!!  #{i}, tu as réussi !"
    end
end


jouer 
