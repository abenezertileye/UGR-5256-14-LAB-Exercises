import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "The only way to do great work is to love what you do. – Steve Jobs",
    "Innovation distinguishes between a leader and a follower. – Steve Jobs",
    "Strive not to be a success, but rather to be of value. – Albert Einstein",
    "Life is what happens when you're busy making other plans. – John Lennon",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. – Winston Churchill",
  ];

  int index = Random().nextInt(quotes.length);

  return quotes[index];
}

void main() async {
  String quote = await fetchQuote();

  print('Random Quote: $quote');
}
