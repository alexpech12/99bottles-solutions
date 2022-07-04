class Bottles
    def verse(number)
        "#{n_bottles(number)} of milk on the wall, " +
        "#{n_bottles(number)} of milk.\n" +
        "Take #{number == 1 ? 'it' : 'one'} down and pass it around, " +
        "#{n_bottles(number - 1)} of milk on the wall.\n"
    end

    def n_bottles(number)
        case
        when number > 1
            "#{number} bottles"
        when number == 1
            "#{number} bottle"
        else
            'no more bottles'
        end
    end
end