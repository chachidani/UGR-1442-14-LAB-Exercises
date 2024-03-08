import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    String fileContents = file.readAsStringSync();
    print("File contents:\n$fileContents");
  } catch (error) {
    if (error is FileSystemException && error.osError != null && error.osError!.errorCode == 2) {
      print("File not found at the specified path.");
    } else {
      print("An error occurred while reading the file: $error");
    }
  }
}

void main() {
  String filePath = "path/to/nonexistent/file.txt";
  readFile(filePath);
}
