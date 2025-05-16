module Blackjack
  def self.parse_card(card)

    card_dict = {
      'ace' => 11,
      'ten' => 10,
      'nine' => 9,
      'eight' => 8,
      'seven' => 7,
      'six' => 6,
      'five' => 5,
      'four' => 4,
      'three' => 3,
      'two' => 2,
      'jack' => 10,
      'queen' => 10,
      'king' => 10,
    }
     card_dict[card] || 0
  end

  def self.card_range(card1, card2)
    v1 = parse_card(card1)
    v2 = parse_card(card2)
    total = v1 + v2
    if total < 12
      'low'
    elsif total <= 16
      'mid'
    elsif total <= 20
      'high'
    else
      'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    player_total = parse_card(card1) + parse_card(card2)
    dealer_value = parse_card(dealer_card)

    return 'P' if card1 == 'ace' && card2 == 'ace'

    if player_total == 21

      return 'W' if dealer_value < 10

      return 'S'

    elsif player_total >= 17
      'S'
    elsif player_total >= 12 && dealer_value.between?(4, 6)
      'S'
    else
      'H'
    end
  end
end
