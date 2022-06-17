abstract class AppConfig {
  static const apiKey =
      bool.hasEnvironment("API_KEY") ? String.fromEnvironment("API_KEY") : null;

  static const apiUrl =
      String.fromEnvironment("API_URL", defaultValue: "http://10.0.2.2:1337");
}
