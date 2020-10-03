import 'dart:convert';
import 'dart:io';

// Creates the [ConstantCredentials] class with specified values in the items.
void generateConstantCredentials(Map<String, String> items) {
  final File creds = File('lib/core/constant_credentials.dart');
  const String disclaimer = '''
// Disclaimer: this file is on .gitignore because it contains private information
// Contain the credentials that does not change\n
''';
  creds.writeAsStringSync(disclaimer);
  creds.writeAsStringSync('class ConstantCredentials {\n',
      mode: FileMode.append);
  for (final String variable in items.keys) {
    creds.writeAsStringSync(
        '  static const String $variable = "${items[variable]}";\n',
        mode: FileMode.append);
  }
  creds.writeAsStringSync('}\n', mode: FileMode.append);
  stdout.write(
      "Credentials file generated at 'lib/core/constant_credentials.dart'\n");
}

void main(List<String> args) {
  const String path = 'android/app/google-services.json';

  // Exit if 'android/app/google-services.json' doesn't exist.
  if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
    stdout.write("Unable to find 'google-services.json'.\n");
    stdout.write("Copy 'google-services.json' in 'android/app/' & try again.");
    return;
  }

  // Read the file and get `fireBaseProjectId` and `fireBaseApiKey`.
  final File file = File(path);
  final Map<String, dynamic> settings =
      (json.decode(file.readAsStringSync()) as Map).cast<String, dynamic>();
  final Map<String, String> credentials = <String, String>{};
  credentials['fireBaseProjectId'] =
      settings['project_info']['project_id'].toString();
  credentials['fireBaseApiKey'] =
      settings['client'][0]['api_key'][0]['current_key'].toString();

  generateConstantCredentials(credentials);
}
