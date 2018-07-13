void main() {
  var deck = new Deck();
  //deck.shuffle();
  //print(deck);
  //print(deck.deal(5));
  //print(deck);
  deck.removeCard('Diamonds', 'Ace');
  print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    List<Card> hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }

  toString() {
    return cards.toString();
  }
}

class Card {
  String suit;
  String rank;

  Card({this.rank, this.suit});

  toString() {
    return '$rank of $suit';
  }
}
