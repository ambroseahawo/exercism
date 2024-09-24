"""Functions to help play and score a game of blackjack.

How to play blackjack:    https://bicyclecards.com/how-to-play/blackjack/
"Standard" playing cards: https://en.wikipedia.org/wiki/Standard_52-card_deck
"""
import itertools


def value_of_card(card):
    """Determine the scoring value of a card.

    :param card: str - given card.
    :return: int - value of a given card.  See below for values.

    1.  'J', 'Q', or 'K' (otherwise known as "face cards") = 10
    2.  'A' (ace card) = 1
    3.  '2' - '10' = numerical value.
    """

    face_cards = ['J', 'Q','K']
    
    if card in face_cards:
        return 10
    elif card == 'A':
        return 1
    else: 
        return int(card)


def higher_card(card_one, card_two):
    """Determine which card has a higher value in the hand.

    :param card_one, card_two: str - cards dealt in hand.  See below for values.
    :return: str or tuple - resulting Tuple contains both cards if they are of equal value.

    1.  'J', 'Q', or 'K' (otherwise known as "face cards") = 10
    2.  'A' (ace card) = 1
    3.  '2' - '10' = numerical value.
    """

    card_one_value = value_of_card(card_one)
    card_two_value = value_of_card(card_two)
    
    if card_one_value > card_two_value:
        return str(card_one)
    elif card_two_value > card_one_value:
        return str(card_two_value)
    else:
        return (str(card_one), str(card_two))


def value_of_ace(card_one, card_two):
    """Calculate the most advantageous value for the ace card.

    :param card_one, card_two: str - card dealt. See below for values.
    :return: int - either 1 or 11 value of the upcoming ace card.

    1.  'J', 'Q', or 'K' (otherwise known as "face cards") = 10
    2.  'A' (ace card) = 11 (if already in hand)
    3.  '2' - '10' = numerical value.
    """

    face_cards = ['J', 'Q','K']
    card_one_value = 0
    card_two_value = 0
    
    if card_one in face_cards:
        card_one_value = 10
    elif card_one == 'A':
        card_one_value = 11
    else: 
        card_one_value = int(card_one)
    
    if card_two in face_cards:
        card_two_value = 10
    elif card_two == 'A':
        card_two_value = 11
    else: 
        card_two_value = int(card_two)
    
    total_value = card_one_value + card_two_value
    
    if (total_value + 11) > 21:
        return 1
    else:
        return 11


def is_blackjack(card_one, card_two):
    """Determine if the hand is a 'natural' or 'blackjack'.

    :param card_one, card_two: str - card dealt. See below for values.
    :return: bool - is the hand is a blackjack (two cards worth 21).

    1.  'J', 'Q', or 'K' (otherwise known as "face cards") = 10
    2.  'A' (ace card) = 11 (if already in hand)
    3.  '2' - '10' = numerical value.
    """

    # card_combinations = [('10', 'A'), ('A', '10'), ('K', 'A'), ('A', 'K'),('Q', 'A'), ('A', 'Q'), ('J', 'A'), ('A', 'J')]
    
    ten_card = ['10', 'K', 'Q', 'J']
    permutations_list = []

    for each_item in ten_card:
        permutations_list.append(list(itertools.permutations([each_item, "A"])))

    card_permutations = [item for sublist in permutations_list for item in sublist]
    
    if (card_one, card_two) in card_permutations:
        return True
    else:
        return False

def can_split_pairs(card_one, card_two):
    """Determine if a player can split their hand into two hands.

    :param card_one, card_two: str - cards dealt.
    :return: bool - can the hand be split into two pairs? (i.e. cards are of the same value).
    """

    card_one_value = value_of_card(card_one)
    card_two_value = value_of_card(card_two)
    
    if card_one_value == card_two_value:
        return True
    else:
        return False


def can_double_down(card_one, card_two):
    """Determine if a blackjack player can place a double down bet.

    :param card_one, card_two: str - first and second cards in hand.
    :return: bool - can the hand can be doubled down? (i.e. totals 9, 10 or 11 points).
    """

    card_one_value = value_of_card(card_one)
    card_two_value = value_of_card(card_two)
    
    total_value = card_one_value + card_two_value
    double_down_total = [9,10,11]
    
    if total_value in double_down_total:
        return True
    else:
        return False
