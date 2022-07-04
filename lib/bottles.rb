class Bottles
    def verse(number)
        "#{n_bottles(number).capitalize} of milk on the wall, " +
        "#{n_bottles(number)} of milk.\n" +
        third_line(number) +
        "#{n_bottles((number - 1) % 100)} of milk on the wall.\n"
    end

    def verses(start, finish)
        (finish..start).to_a.reverse.map { |number| verse(number) }.join("\n")
    end

    def song
        verses(99, 0)
    end

    private

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

    def third_line(number)
        if number == 0
            'Go to the store and buy some more, '
        else
            "Take #{number == 1 ? 'it' : 'one'} down and pass it around, "
        end
    end
end