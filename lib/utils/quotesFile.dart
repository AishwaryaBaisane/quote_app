class QuotesModel {
  String? quote;
  String? author;
  String? img;
  List QuotesList = [];

  QuotesModel({this.author, this.quote, this.img});

  factory QuotesModel.fromQuotesModel(Map m1) {
    return QuotesModel(
        author: m1['author'], quote: m1['quote'], img: m1['img']);
  }

  QuotesModel.toList(List l1) {
    for (int i = 0; i < l1.length; i++) {
      QuotesList.add(QuotesModel.fromQuotesModel(l1[i]));
    }
  }
}

List QuoteList = [
  //Goal
  {
    'category': 'Goal',
    "quote":
        "What you get by achieving your goals is not as important as what you become by achieving your goals.",
    "author": "Zig Ziglar"
  },
  {
    'category': 'Goal',
    "quote": "Intelligence without ambition is a bird without wings.",
    "author": "Salvador Dali"
  },
  {
    'category': 'Goal',
    "quote":
        "The key is to keep company only with people who uplift you, whose presence calls forth your best.",
    "author": "Epictetus"
  },
  {
    'category': 'Goal',
    "quote": "We may encounter many defeats but we must not be defeated.",
    "author": "May Angelou"
  },
  {
    'category': 'Goal',
    "quote": "Problems are not stop signs, they are guidelines.",
    "author": "Robert H. Schuller"
  },
  //Positive
  {
    'category': 'Positive',
    "quote": "Be kind whenever possible. It is always possible.",
    "author": "Dalai Lama"
  },
  {
    'category': 'Positive',
    "quote":
        "A creative man is motivated by the desire to achieve, not by the desire to beat others.",
    "author": "Ayn Rand"
  },
  {
    'category': 'Positive',
    "quote": "A somebody was once a nobody who wanted to and did.",
    "author": "John Burroughs"
  },
  {
    'category': 'Positive',
    "quote": "Life is 10% what happens to us and 90% how we react to it.",
    "author": "Dennis P. Kimbro"
  },
  {
    'category': 'Positive',
    "quote":
        "Even if you’re on the right track, you’ll get run over if you just sit there.",
    "author": "Will Rogers"
  },
  //strong
  {
    'category': 'strong',
    "quote":
        "Luck is a dividend of sweat. The more you sweat, the luckier you get.",
    "author": "Ray Kroc"
  },
  {
    'category': 'strong',
    "quote":
        "Courage is the first of human qualities because it is the quality which guarantees all others.",
    "author": "Winston Churchill"
  },
  {
    'category': 'strong',
    "quote":
        "The great thing in this world is not so much where you stand, as in what direction you are moving.",
    "author": "Oliver Wendell Holmes"
  },
  {
    'category': 'strong',
    "quote":
        "Though no one can go back and make a brand new start, anyone can start from now and make a brand new ending.",
    "author": "Carl Bard"
  },
  {
    'category': 'strong',
    "quote": "Speak less than you know; have more than you show.",
    "author": "William Shakespeare"
  },
  //good
  {
    'category': 'good',
    "quote": "Education costs money. But then so does ignorance.",
    "author": "Sir Claus Moser"
  },
  {
    'category': 'good',
    "quote": "The journey of a thousand miles begins with one step.",
    "author": "Lao Tzu"
  },
  {
    'category': 'good',
    "quote": "Do not let what you cannot do interfere with what you can do.",
    "author": "John Wooden"
  },
  {
    'category': 'good',
    "quote": "Defeat is not bitter unless you swallow it.",
    "author": "Joe Clark"
  },
  {
    'category': 'good',
    "quote": "An obstacle is often a stepping stone.",
    "author": "Prescott"
  },
  //inspring
  {
    'category': 'inspring',
    "quote":
        "Don’t worry about failures, worry about the chances you miss when you don’t even try.",
    "author": "Jack Canfield"
  },
  {
    'category': 'inspring',
    "quote": "Live each day as if your life had just begun.",
    "author": "Johann Wolfgang Von Goethe"
  },
  {
    'category': 'inspring',
    "quote": "The secret to getting ahead is getting started.",
    "author": "Mark Twain"
  },
  {
    'category': 'inspring',
    "quote":
        "The will to win, the desire to succeed, the urge to reach your full potential, these are the keys that will unlock the door to personal excellence.",
    "author": "Confucius"
  },
  {
    'category': 'inspring',
    "quote": "Set your goals high and don’t stop until you get there.",
    "author": "Bo Jackson"
  },
  //happy
  {
    'category': 'happy',
    "quote":
        "The world is full of magical things patiently waiting for our wits to grow sharper.",
    "author": "Bertrand Russell"
  },
  {
    'category': 'happy',
    "quote":
        "Let us make our future now, and let us make our dreams tomorrow’s reality.",
    "author": "Malala Yousafzai"
  },
  {
    'category': 'happy',
    "quote":
        "All you need is the plan, the road map, and the courage to press on to your destination.",
    "author": "Earl Nightingale"
  },
  {
    'category': 'happy',
    "quote": "The glow of one warm thought is to me worth more than money.",
    "author": "Thomas Jefferson"
  },
  {
    'category': 'happy',
    "quote": "The power of imagination makes us infinite.",
    "author": "John Muir"
  },
  //sad
  {
    'category': 'sad',
    "quote": "Try to be a rainbow in someone’s cloud.",
    "author": "Maya Angelou"
  },
  {
    'category': 'sad',
    "quote": "I dwell in possibility.",
    "author": "Emily Dickinson"
  },
  {
    'category': 'sad',
    "quote": "A No. 2 pencil and a dream can take you anywhere.",
    "author": "Joyce Meyer"
  },
  {
    'category': 'sad',
    "quote": "In a gentle way, you can shake the world.",
    "author": "Mahatma Gandhi"
  },
  {
    'category': 'sad',
    "quote":
        "Follow your bliss and the universe will open doors where there were only walls.",
    "author": "Joseph Campbell"
  },
  {
    'category': 'sad',
    "quote": "Everything you’ve ever wanted is on the other side of fear.",
    "author": "George Addair"
  },
  //confidence
  {
    'category': 'confidence',
    "quote": "Each day provides its own gifts.",
    "author": "Marcus Aurelius"
  },
  {
    'category': 'confidence',
    "quote": "Creativity is intelligence having fun.",
    "author": "Albert Einstein"
  },
  {
    'category': 'confidence',
    "quote":
        "People who are crazy enough to think they can change the world, are the ones who do.",
    "author": "Rob Siltanen"
  },
  {
    'category': 'confidence',
    "quote":
        "Imagine your life is perfect in every respect; what would it look like?",
    "author": "Brian Tracy"
  },
  {
    'category': 'confidence',
    "quote": "The way to get started is to quit talking and begin doing.",
    "author": "Walt Disney"
  },
  {
    'category': 'confidence',
    "quote": "It is always the simple that produces the marvelous.",
    "author": "Amelia Barr"
  },
  {
    'category': 'confidence',
    "quote":
        "Our greatest glory is not in never falling, but in rising every time we fall.",
    "author": "Confucius"
  },

  {
    'category': 'confidence',
    "quote":
        "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "author": "Winston Churchill"
  },
];
