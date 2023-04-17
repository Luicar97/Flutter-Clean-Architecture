class AppConfig {
  AppConfig({required this.env});
  final Environment env;
}

enum Environment {
  dev,
  staging,
  prod,
}

extension EnvironmentStringExtension on Environment {
  String toShortString() {
    return toString().split('.').last;
  }
}

Environment envFromString(String env) {
  for (final value in Environment.values) {
    if (value.toShortString() == env) {
      return value;
    }
  }
  return Environment.dev;
}
