import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      File file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);
      print("File downloaded successfully!");
    } else {
      print("Failed to download file. Status Code: ${response.statusCode}");
    }
  } catch (e) {
    print("Failed to download file: $e");
  }
}

void main() async {
  String url = "https://example.com/file.txt";
  String savePath = "path/to/save/file.txt";

  print("Downloading file from: $url");
  await downloadFile(url, savePath);
}
