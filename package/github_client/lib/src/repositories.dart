// ignore_for_file: non_constant_identifier_names, unused_import

import "package:github/github.dart";
import "package:github_client/github_client_raw/github_client_raw.dart";
import 'package:github_client/scheme/scheme.dart' as scheme;

class GithubClientRepositories extends GithubClientRaw {
  GithubClientRepositories({
    required super.tokenGithub,
  });

  createFork({
    required String owner_id,
    required String repo_id,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(tokenGithub: tokenGithub);
    await gitHub.repositories.createFork(RepositorySlug(owner_id, repo_id));
  }

  createStar({
    required String owner_id,
    required String repo_id,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(tokenGithub: tokenGithub);
    await gitHub.activity.star(RepositorySlug(owner_id, repo_id));
  }

  unStar({
    required String owner_id,
    required String repo_id,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(tokenGithub: tokenGithub);
    await gitHub.activity.unstar(RepositorySlug(owner_id, repo_id));
  }
}
