// ignore_for_file: non_constant_identifier_names, unused_import

import "package:github/github.dart";
import "package:github_client/github_client_raw/github_client_raw.dart";
import 'package:github_client/scheme/scheme.dart' as scheme;

class GithubClientActivity extends GithubClientRaw {
  GithubClientActivity({
    required super.tokenGithub,
  });
  test({String? tokenGithub}) {
    // GitHub gitHub = git_hub(tokenGithub: tokenGithub);
    // gitHub.activity.unstar(slug);
  }
}
