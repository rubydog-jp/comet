class RemoteConfig {
  const RemoteConfig({
    required this.minCliVer,
    required this.templateSite,
  });
  final String minCliVer;
  final String templateSite;

  factory RemoteConfig.fromJson(Map<String, dynamic> json) {
    return RemoteConfig(
      minCliVer: json['min_cli_ver'] as String,
      templateSite: json['template_site'] as String,
    );
  }
}
