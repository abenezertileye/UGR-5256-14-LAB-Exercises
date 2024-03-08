import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData() async {
  // Replace 'YOUR_API_KEY' with your actual API key
  String apiKey = 'YOUR_API_KEY';
  String city =
      'New York'; // Specify the city for which you want to fetch weather data
  String apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  // Send a GET request to the weather API
  var response = await http.get(Uri.parse(apiUrl));

  // Check if the request was successful (status code 200)
  if (response.statusCode == 200) {
    // Parse the JSON response
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Failed to fetch weather data: ${response.statusCode}');
  }
}

void main() async {
  try {
    // Call the async function to fetch weather data
    Map<String, dynamic> weatherData = await fetchWeatherData();

    // Extract temperature and weather conditions from the weather data
    double temperature = weatherData['main']['temp'];
    String weatherDescription = weatherData['weather'][0]['description'];

    // Print the temperature and weather conditions
    print('Current Temperature: $temperature°C');
    print('Weather Conditions: $weatherDescription');
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}
