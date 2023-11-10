import 'dart:io';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/types/yaml.dart';
import 'package:yaml/yaml.dart';

CometYaml? readCometYaml({
  String path = '',
}) {
  final file = File('$path$cometYamlName');
  final exists = file.existsSync();
  if (!exists) return null;
  final text = file.readAsStringSync();
  final yaml = loadYaml(text) as Map;

  late final YamlSite yamlSite;
  late final YamlGithub yamlGithub;
  late final YamlFlutterProject yamlFlutterProject;
  late final List<YamlFont> yamlFonts;
  late final List<YamlIgnoreFolder> yamlIgnoreFolders;

  /* site */
  try {
    final site = yaml['site'] as Map;
    final tabbarIcon = site['icon'] as String;
    final tabbarTitle = site['title'] as String;
    final copyright = site['copyright'] as String;

    yamlSite = YamlSite(
      icon: tabbarIcon,
      title: tabbarTitle,
      copyright: copyright,
    );
  } catch (_) {
    throw Exception('Cannot read site in comet.yaml');
  }

  /* github */
  try {
    final github = yaml['github'] as Map;
    final githubUserId = github['user_id'] as String?;
    final githubRepoName = github['repository_name'] as String?;

    yamlGithub = YamlGithub(
      userId: githubUserId,
      repoName: githubRepoName,
    );
  } catch (_) {
    throw Exception('Cannot read github in comet.yaml');
  }

  /* flutter_project */
  try {
    final flutterProject = yaml['flutter_project'] as Map;
    final root = flutterProject['root'] as String;

    yamlFlutterProject = YamlFlutterProject(
      root: root,
    );
  } catch (_) {
    throw Exception('Cannot read flutter_project in comet.yaml');
  }

  /* fonts */
  try {
    final fonts = yaml['fonts'] as List;

    yamlFonts = fonts.map((it) {
      final url = it['url'] as String;
      final font = it['font'] as String;
      return YamlFont(
        url: url,
        font: font,
      );
    }).toList();
  } catch (_) {
    throw Exception('Cannot read flutter_project in comet.yaml');
  }

  /* ignore_folders */
  try {
    final ignoreFiles = yaml['ignore_folders'] as List;

    yamlIgnoreFolders = ignoreFiles.map((it) {
      return it as String;
    }).toList();
  } catch (_) {
    throw Exception('Cannot read flutter_project in comet.yaml');
  }

  return CometYaml(
    site: yamlSite,
    github: yamlGithub,
    flutterProject: yamlFlutterProject,
    fonts: yamlFonts,
    ignoreFolders: yamlIgnoreFolders,
  );
}
