class Turn
    attr_reader :player1,
                :player2,
                :spoils_of_war
                
                

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @spoils_of_war = []
        
        def type
           if   @player1.deck.rank_of_cards_at(0) != @player2.deck.rank_of_cards_at(0)
                :basic
           elsif @player1.deck.rank_of_cards_at(0) == @player2.deck.rank_of_cards_at(0)
                :war
           else
                @player1.deck.rank_of_cards_at(0) == @player2.deck.rank_of_cards_at(0) && @player1.deck.rank_of_cards_at(2) == @player2.deck.rank_of_cards_at(2)
                :mututally_assured_destruction
           end
        end

        def winner
            if type == :basic
                if @player1.deck.rank_of_cards_at(0) > @player2.deck.rank_of_cards_at(0)
                    @player1
                else
                    @player2


                end

            end

        end



    end
end