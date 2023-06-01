// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

// import "package:github/github.dart";
import "dart:convert";

import "package:github_client/extension/extension.dart";
import "package:github_client/github_client_raw/github_client_raw.dart";
import 'package:github_client/scheme/scheme.dart' as scheme;
import 'package:github_client/scheme_raw/scheme_raw.dart' as scheme_raw;
import "package:http/http.dart" as http;

class GithubClientUser extends GithubClientRaw {
  GithubClientUser({
    required super.tokenGithub,
  });

  /// [Docs Resmi](https://docs.github.com/en/rest/users/followers?apiVersion=2022-11-28#follow-a-user)
  Future<scheme.Ok> followUser({
    required String user_id,
    String? tokenGithub,
  }) async {
    http.Response res = await invoke(
      method: "put",
      path_api: "/user/following/${user_id}",
      tokenGithub: tokenGithub,
    );
    Map jsonData = {
      "@type": (res.statusCode == 204) ? "ok" : "error",
    };
    if (res.statusCode != 204) {
      jsonData["code"] = res.statusCode;
    }
    return scheme.Ok(jsonData);
  }

  /// [Docs Resmi](https://docs.github.com/en/rest/users/followers?apiVersion=2022-11-28#unfollow-a-user)
  Future<scheme.Ok> unFollowUser({
    required String user_id,
    String? tokenGithub,
  }) async {
    http.Response res = await invoke(
      method: "delete",
      path_api: "/user/following/${user_id}",
      tokenGithub: tokenGithub,
    );
    Map jsonData = {
      "@type": (res.statusCode == 204) ? "ok" : "error",
    };
    if (res.statusCode != 204) {
      jsonData["code"] = res.statusCode;
    }
    return scheme.Ok(jsonData);
  }

  /// [Docs](https://docs.github.com/en/rest/users/users?apiVersion=2022-11-28#get-the-authenticated-user)
  Future<scheme.User> getMe({
    String? tokenGithub,
  }) async {
    http.Response res = await invoke(
      method: "get",
      path_api: "/user",
      tokenGithub: tokenGithub,
    );

    Map user_data_raw = json.decode(res.body);
    scheme_raw.User user_data = scheme_raw.User(user_data_raw);

    if (res.statusCode != 200) {
      user_data["@type"] = "error";
      user_data["code"] = res.statusCode;
    }
    
    return user_data.toUserScheme;
  }

  /// [Docs Resmi](https://docs.github.com/en/rest/users/users?apiVersion=2022-11-28#get-a-user)
  Future<scheme.User> getUser({
    required String user_id,
    String? tokenGithub,
  }) async {
    http.Response res = await invoke(
      method: "get",
      path_api: "/users/${user_id}",
      tokenGithub: tokenGithub,
    );
    Map user_data_raw = json.decode(res.body);
    scheme_raw.User user_data = scheme_raw.User(user_data_raw);
    if (res.statusCode != 200) {
      user_data["@type"] = "error";
      user_data["code"] = res.statusCode;
    }
    return user_data.toUserScheme;
  }
}
