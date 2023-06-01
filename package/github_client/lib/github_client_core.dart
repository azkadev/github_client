// ignore_for_file: non_constant_identifier_names

import "package:github_client/github_client_raw/github_client_raw.dart";
import "package:github_client/src/src.dart";

class GithubClient extends GithubClientRaw {
  GithubClient({
    required super.tokenGithub,
  });

  GithubClientActivity get activity {
    return GithubClientActivity(tokenGithub: token_github);
  }

  GithubClientChecks get checks {
    return GithubClientChecks(tokenGithub: token_github);
  }

  GithubClientGists get gists {
    return GithubClientGists(tokenGithub: token_github);
  }

  GithubClientGit get git {
    return GithubClientGit(tokenGithub: token_github);
  }

  GithubClientIssues get issues {
    return GithubClientIssues(tokenGithub: token_github);
  }

  GithubClientOrganizations get organizations {
    return GithubClientOrganizations(tokenGithub: token_github);
  }

  GithubClientPullRequests get pull_requests {
    return GithubClientPullRequests(tokenGithub: token_github);
  }

  GithubClientRepositories get repositories {
    return GithubClientRepositories(tokenGithub: token_github);
  }

  GithubClientSearch get search {
    return GithubClientSearch(tokenGithub: token_github);
  }

  GithubClientUser get users {
    return GithubClientUser(tokenGithub: token_github);
  }

  invoke({
    required Map parameters,
    String? tokenGithub,
  }) async {
    //
    //
    //
    //
    //
    //
    //
    //
    //
  }

  request({
    required Map parameters,
    String? tokenGithub,
  }) async {}
}
