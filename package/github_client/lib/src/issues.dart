// ignore_for_file: non_constant_identifier_names, unused_import
 
import "package:github_client/github_client_raw/github_client_raw.dart";
import 'package:github_client/scheme/scheme.dart' as scheme;

class GithubClientIssues extends GithubClientRaw {
  GithubClientIssues({
    required super.tokenGithub,
  });

  Future<scheme.Ok> closeAllIssues({
    required String owner_id,
    required String repo_id,
    required int issue_id,
    String? tokenGithub,
  }) async {
    // GitHub gitHub = git_hub(
    //   tokenGithub: tokenGithub,
    // );
    // Issue issue = await gitHub.issues.edit(
    //     RepositorySlug(owner_id, repo_id),
    //     issue_id,
    //     IssueRequest(
    //       state: "closed",
    //     ));

    Map jsonData = {
      // "@type": (issue.number == issue_id) ? "ok" : "error",
    };
    return scheme.Ok(jsonData);
  }
}
