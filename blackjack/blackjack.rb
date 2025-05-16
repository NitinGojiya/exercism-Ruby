module Blackjack
  def self.parse_card(card)
    c10 = ["ten", "jack", "queen", "king"]
    case card
    when 'ace' then 11
    when *c10 then 10
    when 'nine' then 9
    when 'eight' then 8
    when 'seven' then 7
    when 'six' then 6
    when 'five' then 5
    when 'four' then 4
    when 'three' then 3
    when 'two' then 2
    else 0
    end
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
