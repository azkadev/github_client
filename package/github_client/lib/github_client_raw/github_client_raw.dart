// ignore_for_file: unused_import, non_constant_identifier_names

import "package:github/github.dart";
import 'package:github_client/scheme/scheme.dart' as scheme;

class GithubClientRaw {
  String token_github = "";

  GithubClientRaw({
    required String tokenGithub,
  }) {
    token_github = tokenGithub;
  }

  GitHub git_hub({
    String? tokenGithub,
  }) {
    tokenGithub ??= token_github;
    return GitHub(auth: Authentication.withToken(tokenGithub));
  }

  Future<scheme.RateLimit> getRateLimit({
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );
    RateLimit rateLimit = await gitHub.misc.getRateLimit();

    Map jsonData = {
      "@type": "rateLimit",
      "limit": rateLimit.limit,
      "remaining": rateLimit.remaining,
      "date_reset": rateLimit.resets?.millisecondsSinceEpoch,
    };

    return scheme.RateLimit(jsonData);
  }

  Future<scheme.GitignoreTemplates> getGitignoreTemplates({
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );
    List<String> git_ignore_templates =
        ((await gitHub.getJSON('/gitignore/templates')) as List)
            .whereType<String>()
            .toList();

    Map jsonData = {
      "@type": "gitignoreTemplates",
      "total_count": git_ignore_templates.length,
      "git_ignore_templates": git_ignore_templates,
    };

    return scheme.GitignoreTemplates(jsonData);
  }

  Future<scheme.OctocatData> getOctocat({
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );
    String result_data = await gitHub.misc.getOctocat();

    Map jsonData = {
      "@type": "octocatData",
      "data": result_data,
    };

    return scheme.OctocatData(jsonData);
  }

  Future<scheme.WisdomData> getWisdom({
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );
    String result_data = await gitHub.misc.getWisdom();

    Map jsonData = {
      "@type": "wisdomData",
      "data": result_data,
    };

    return scheme.WisdomData(jsonData);
  }

  Future<scheme.ZenData> getZen({
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );
    String zen_result = await gitHub.misc.getZen();

    Map jsonData = {
      "@type": "zenData",
      "data": zen_result,
    };

    return scheme.ZenData(jsonData);
  }

  Future<scheme.MarkdownData> renderMarkdown({
    required String text,
    String mode = 'markdown',
    String? context,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );
    String markdown_result = await gitHub.misc.renderMarkdown(
      text,
      mode: mode,
      context: context,
    );

    Map jsonData = {
      "@type": "markdownData",
      "data": markdown_result,
    };

    return scheme.MarkdownData(jsonData);
  }
}
