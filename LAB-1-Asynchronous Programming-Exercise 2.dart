import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully: $savePath');
  } else {
    print('Failed to download file: ${response.statusCode}');
  }
}

void main() async {
  String url = 'https://example.com/file.txt';
  String savePath = 'file.txt';

  try {
    await downloadFile(url, savePath);
  } catch (e) {
    print('Error: $e');
  }
}
