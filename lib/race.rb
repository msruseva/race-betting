module RaceBet
  class Race

    class << self

      def score(guesses, winners)
      	placement = create_placement(winners)
     		correct_guesses(guesses, placement).reduce(:+)
      end

      def points(place)
      	case place
      		when 0..2 then 15 - 5*place
      		when 3..4 then 9 - 2*place
      		else 0
      	end
      end

      def create_placement(winners)
      	placement = {}

      	winners.each_with_index do |winner, index|
      		placement[winner] = [points(index), index]
      	end
      	placement
      end

      def correct_guesses(guesses, placement)
      	guesses.map.with_index do |guess, index|
      		if placement[guess]
        		winnings, place = placement[guess]
        		index == place ? winnings : 1
        	else
        		0
        	end
      	end
      end

    end
  end
end
