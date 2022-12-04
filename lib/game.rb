require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
class Game
    SUITS = %i[heart diamond spade club]
    CARD_VALUES = [*2..10, 'Jack', 'Queen', 'King', 'Ace']

    attr_reader :player1,
                :player2,
                :cards,
                :turn,
                :deck1,
                :deck2          

    def initialize(name1, name2)
        decks = create_decks
        @player1 = create_player(name1, decks[0])
        @player2 = create_player(name2, decks[1])
        # require 'pry'; binding.pry
    end
    
    def create_decks
        card_values = CARD_VALUES
        suits = SUITS

        cards = suits.map do |suit|
            card_values.map do |card_value|
                rank = card_values.find_index(card_value) + 2
                Card.new(suit, card_value.to_s, rank)
            end
        end.flatten.shuffle!

        cards = cards.each_slice(26).to_a
        [Deck.new(cards[0]), Deck.new(cards[1])]
    end

    def create_player(name, deck)
        Player.new(name, deck)
    end

    def start
        p "Welcome to War! (or Peace) This game will be played with 52 cards."
        p "The players today are Megan and Aurora."
        p "Type 'GO' to start the game!"
        p "------------------------------------------------------------------"
        user_input = gets.chomp.upcase
        if user_input == "GO" 
            run_game
        else
            p "Okay bye"
        end
    end

    def run_game
        turn_count = 0
        until turn_count = 1_000_000 

        end

    end

end