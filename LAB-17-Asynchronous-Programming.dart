Future<List<String>> fetchDataFromDatabase() async {
 
  await Future.delayed(Duration(seconds: 2));
  
  
  List<String> data = ["John Doe", "Jane Smith", "Bob Johnson"];
  
  return data;
}

void main() async {
  print("Loading data from the database...");
  
  List<String> data = await fetchDataFromDatabase();
  
  print("Data loaded: $data");
}
