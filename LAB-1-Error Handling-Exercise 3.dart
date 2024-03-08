import 'dart:io';

Future<void> readFileFromDisk(String filePath) async {
  try {
    File file = File(filePath);
    String contents = await file.readAsString();

    print('File contents:\n$contents');
  } catch (e) {
    if (e is FileSystemException) {
      print('Error reading file: ${e.message}');
    } else {
      print('Error: $e');
    }
  }
}

void main() {
  String filePath = 'example.txt';

  readFileFromDisk(filePath);
}
