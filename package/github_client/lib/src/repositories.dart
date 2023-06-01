// ignore_for_file: non_constant_identifier_names, unused_import, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:galaxeus_lib/galaxeus_lib.dart';
import "package:github_client/github_client_raw/github_client_raw.dart";
import 'package:github_client/scheme/scheme.dart' as scheme;

import 'package:github_client/scheme_raw/scheme_raw.dart' as scheme_raw;
import "package:http/http.dart" as http;

class GithubClientRepositories extends GithubClientRaw {
  GithubClientRepositories({
    required super.tokenGithub,
  });

  /// [Docs Resmi](https://docs.github.com/en/rest/users/followers?apiVersion=2022-11-28#follow-a-user)
  Future<scheme.Ok> createFork({
    required String owner_id,
    required String repo_id,
    String? tokenGithub,
  }) async {
    http.Response res = await invoke(
      method: "post",
      path_api: "/repos/${owner_id}/${repo_id}/forks",
      tokenGithub: tokenGithub,
    );
    Map res_data_raw = json.decode(res.body);
    res_data_raw.printPretty();
    Map jsonData = {
      "@type": "repository",
      ...res_data_raw,
    };
    if (res.statusCode != 202) {
      jsonData["@type"] = "error";
      jsonData["code"] = res.statusCode;
    }
    return scheme.Ok(jsonData);
  }
  /// [Docs Resmi](https://docs.github.com/en/rest/users/followers?apiVersion=2022-11-28#follow-a-user)
  Future<scheme.Ok> changeTopics({
    required String owner_id,
    required String repo_id,
    required List<String> topics,
    String? tokenGithub,
  }) async {
    http.Response res = await invoke(
      method: "put",
      path_api: "/repos/${owner_id}/${repo_id}/topics",
      tokenGithub: tokenGithub,
      parameters: {
        "names": topics,
      }
    );
    Map res_data_raw = json.decode(res.body);
    res_data_raw.printPretty();
    Map jsonData = {
      "@type": "ok",
      ...res_data_raw,
    };
    if (res.statusCode != 200) {
      jsonData["@type"] = "error";
      jsonData["code"] = res.statusCode;
    }
    return scheme.Ok(jsonData);
  }

  // createStar({
  //   required String owner_id,
  //   required String repo_id,
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(tokenGithub: tokenGithub);
  //   await gitHub.activity.star(RepositorySlug(owner_id, repo_id));
  // }

  // unStar({
  //   required String owner_id,
  //   required String repo_id,
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(tokenGithub: tokenGithub);
  //   await gitHub.activity.unstar(RepositorySlug(owner_id, repo_id));
  // }
}
