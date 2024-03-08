import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating network delay
  List<String> quotesList = [
    "Embrace your uniqueness; everyone else is already occupied with their own journey in education.",
    "There are two infinite realms: the realm of knowledge and the realm of human ignorance; my conviction lies with the former.",
    "In three words, I summarize the essence of learning: it never stops evolving.",
    "To excel academically, passion for learning is paramount."
  ];
  Random random = Random();
  int randomIndex = random.nextInt(quotesList.length);
  return quotesList[randomIndex];
}

void main() async {
  print("Fetching quote...");
  String fetchedQuote = await fetchQuote();
  print("Fetched quote: $fetchedQuote");
}
