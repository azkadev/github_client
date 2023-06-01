// ignore_for_file: unused_import, non_constant_identifier_names, unnecessary_brace_in_string_interps

import "dart:convert";

import 'package:github_client/scheme/scheme.dart' as scheme;
import "package:http/http.dart" as http;

class GithubClientRaw {
  String token_github = "";

  GithubClientRaw({
    required String tokenGithub,
  }) {
    token_github = tokenGithub;
  }

  Future<http.Response> invoke({
    required String method,
    required String path_api,
    Map? parameters,
    Map<String, dynamic>? queryParameters,
    required String? tokenGithub,
    String apiVersion = "2022-11-28",
  }) async {
    tokenGithub ??= token_github;
    parameters ??= {};

    Uri url_api = Uri.parse("https://api.github.com").replace(path: path_api, queryParameters: queryParameters);

    Map<String, String> headers_invoke = {
      "Accept": "application/vnd.github+json",
      "Authorization": "Basic ${base64.encode(utf8.encode("${tokenGithub}:"))}",
      "X-GitHub-Api-Version": apiVersion,
    };

    late http.Response response;
    if (RegExp(r"^(post)$", caseSensitive: false).hasMatch(method)) {
      response = await http.post(
        url_api,
        headers: headers_invoke,
        body: json.encode(
          parameters,
        ),
      );
    } else if (RegExp(r"^(delete)$", caseSensitive: false).hasMatch(method)) {
      response = await http.delete(
        url_api,
        headers: headers_invoke,
        body: json.encode(
          parameters,
        ),
      );
    } else if (RegExp(r"^(put)$", caseSensitive: false).hasMatch(method)) {
      response = await http.put(
        url_api,
        headers: headers_invoke,
        body: json.encode(
          parameters,
        ),
      );
    } else if (RegExp(r"^(patch)$", caseSensitive: false).hasMatch(method)) {
      response = await http.patch(
        url_api,
        headers: headers_invoke,
        body: json.encode(
          parameters,
        ),
      );
    } else {
      response = await http.get(
        url_api,
        headers: headers_invoke,
      );
    }
    return response;
  }

  // GitHub git_hub({
  //   String? tokenGithub,
  // }) {
  //   tokenGithub ??= token_github;
  //   return GitHub(auth: Authentication.withToken(tokenGithub));
  // }

  // Future<scheme.RateLimit> getRateLimit({
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(
  //     tokenGithub: tokenGithub,
  //   );
  //   RateLimit rateLimit = await gitHub.misc.getRateLimit();

  //   Map jsonData = {
  //     "@type": "rateLimit",
  //     "limit": rateLimit.limit,
  //     "remaining": rateLimit.remaining,
  //     "date_reset": rateLimit.resets?.millisecondsSinceEpoch,
  //   };

  //   return scheme.RateLimit(jsonData);
  // }

  // Future<scheme.GitignoreTemplates> getGitignoreTemplates({
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(
  //     tokenGithub: tokenGithub,
  //   );
  //   List<String> git_ignore_templates = ((await gitHub.getJSON('/gitignore/templates')) as List).whereType<String>().toList();

  //   Map jsonData = {
  //     "@type": "gitignoreTemplates",
  //     "total_count": git_ignore_templates.length,
  //     "git_ignore_templates": git_ignore_templates,
  //   };

  //   return scheme.GitignoreTemplates(jsonData);
  // }

  // Future<scheme.OctocatData> getOctocat({
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(
  //     tokenGithub: tokenGithub,
  //   );
  //   String result_data = await gitHub.misc.getOctocat();

  //   Map jsonData = {
  //     "@type": "octocatData",
  //     "data": result_data,
  //   };

  //   return scheme.OctocatData(jsonData);
  // }

  // Future<scheme.WisdomData> getWisdom({
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(
  //     tokenGithub: tokenGithub,
  //   );
  //   String result_data = await gitHub.misc.getWisdom();

  //   Map jsonData = {
  //     "@type": "wisdomData",
  //     "data": result_data,
  //   };

  //   return scheme.WisdomData(jsonData);
  // }

  // Future<scheme.ZenData> getZen({
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(
  //     tokenGithub: tokenGithub,
  //   );
  //   String zen_result = await gitHub.misc.getZen();

  //   Map jsonData = {
  //     "@type": "zenData",
  //     "data": zen_result,
  //   };

  //   return scheme.ZenData(jsonData);
  // }

  // Future<scheme.MarkdownData> renderMarkdown({
  //   required String text,
  //   String mode = 'markdown',
  //   String? context,
  //   String? tokenGithub,
  // }) async {
  //   GitHub gitHub = git_hub(
  //     tokenGithub: tokenGithub,
  //   );
  //   String markdown_result = await gitHub.misc.renderMarkdown(
  //     text,
  //     mode: mode,
  //     context: context,
  //   );

  //   Map jsonData = {
  //     "@type": "markdownData",
  //     "data": markdown_result,
  //   };

  //   return scheme.MarkdownData(jsonData);
  // }
}
