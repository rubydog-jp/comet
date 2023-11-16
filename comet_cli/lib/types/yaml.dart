/// typed data for comet.yaml
class CometYaml {
  const CometYaml({
    required this.site,
    required this.github,
    required this.flutterProject,
    required this.fonts,
    required this.ignoreFolders,
  });

  final YamlSite site;
  final YamlGithub github;
  final YamlFlutterProject flutterProject;
  final List<YamlFont> fonts;
  final List<YamlIgnoreFolder> ignoreFolders;
}

class YamlSite {
  const YamlSite({
    required this.icon,
    required this.title,
    required this.copyright,
  });

  final String icon;
  final String title;
  final String copyright;
}

class YamlFlutterProject {
  const YamlFlutterProject({
    required this.root,
  });

  final String root;
}

class YamlGithub {
  const YamlGithub({
    required this.userId,
    required this.repoName,
  });

  final String? userId;
  final String? repoName;
}

class YamlFont {
  const YamlFont({
    required this.url,
    required this.font,
  });

  final String url;
  final String font;
}

typedef YamlIgnoreFolder = String;
