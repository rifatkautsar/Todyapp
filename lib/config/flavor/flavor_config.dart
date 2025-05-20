class FlavorConfig {
  static const String flavor = String.fromEnvironment('flavor');

  static bool get isDev => flavor == 'dev';
  static bool get isStaging => flavor == 'staging';
  static bool get isProd => flavor == 'prod';
}
