import 'dart:io';

class Client {
  static const String baseURL = "https://pokeapi.co/api/v2/";
  static final HttpClient httpClient = HttpClient();
  static String? nextURL;
  static String? previousURL;
}
