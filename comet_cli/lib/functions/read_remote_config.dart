import 'package:comet_cli/config.dart';
import 'package:comet_cli/types/remote_config.dart';
import 'package:comet_cli/utils/download_json.dart';

Future<RemoteConfig> readRemoteConfig() async {
  final json = await downloadJson(remoteConfigUrl);
  final remoteConfig = RemoteConfig.fromJson(json);
  return remoteConfig;
}
