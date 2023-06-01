// ignore_for_file: non_constant_identifier_names

import "package:github/github.dart";
import "package:github_client/github_client_raw/github_client_raw.dart";
import 'package:github_client/scheme/scheme.dart' as scheme;

class GithubClientUser extends GithubClientRaw {
  GithubClientUser({
    required super.tokenGithub,
  });

  Future<scheme.Ok> followUser({
    required String user_id,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );
    bool is_user_follow = await gitHub.users.followUser(user_id);

    Map jsonData = {
      "@type": (is_user_follow) ? "ok" : "error",
    };
    return scheme.Ok(jsonData);
  }

  Future<scheme.Ok> unfollowUser({
    required String user_id,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );

    bool is_user_follow = await gitHub.users.unfollowUser(user_id);

    Map jsonData = {
      "@type": (is_user_follow) ? "ok" : "error",
    };
    return scheme.Ok(jsonData);
  }

  Future<scheme.User> getMe({
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );

    CurrentUser user_data = await gitHub.users.getCurrentUser();

    Map jsonData = {
      "@type": "user",
      "id": user_data.id,
      "name": user_data.name,
      "username": user_data.login,
      "company": user_data.company,
      "bio": user_data.bio,
      "type": user_data.type?.toLowerCase(),
      "followers_count": user_data.followersCount,
      "following_count": user_data.followingCount,
      "location": user_data.location,
      "avatar_url": user_data.avatarUrl,
      "html_url": user_data.htmlUrl,
      "site_admin": user_data.siteAdmin,
      "blog": user_data.blog,
      "email": user_data.email,
      "hirable": user_data.hirable,
      "public_repos": user_data.publicReposCount,
      "public_gists": user_data.publicGistsCount,
      "create_date": user_data.createdAt?.millisecondsSinceEpoch,
      "update_date": user_data.updatedAt?.millisecondsSinceEpoch,
      "twitter_username": user_data.twitterUsername,
      "events_url": user_data.eventsUrl,
      "followers_url": user_data.followersUrl,
      "following_url": user_data.followingUrl,
      "gists_url": user_data.gistsUrl,
      "gravatar_id": user_data.gravatarId,
      "node_id": user_data.nodeId,
      "organizations_url": user_data.organizationsUrl,
      "received_events_url": user_data.receivedEventsUrl,
      "repos_url": user_data.reposUrl,
      "starred_at": user_data.starredAt,
      "starred_url": user_data.starredUrl,
      "subscriptions_url": user_data.subscriptionsUrl,
      "url": user_data.url,
      "total_private_repos": user_data.privateReposCount,
      "owned_private_repos": user_data.ownedPrivateReposCount,
      "disk_usage": user_data.diskUsage,
      "plan": {
        "@type": "userPlan",
        "name": user_data.plan?.name,
        "space": user_data.plan?.space,
        "private_repos": user_data.plan?.privateReposCount,
        "collaborators": user_data.plan?.collaboratorsCount,
      }
    };

    return scheme.User(jsonData);
  }

  Future<scheme.User> getUser({
    required String user_id,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );

    User user_data = await gitHub.users.getUser(user_id);

    Map jsonData = {
      "@type": "user",
      "id": user_data.id,
      "name": user_data.name,
      "username": user_data.login,
      "company": user_data.company,
      "bio": user_data.bio,
      "type": user_data.type?.toLowerCase(),
      "followers_count": user_data.followersCount,
      "following_count": user_data.followingCount,
      "location": user_data.location,
      "avatar_url": user_data.avatarUrl,
      "html_url": user_data.htmlUrl,
      "site_admin": user_data.siteAdmin,
      "blog": user_data.blog,
      "email": user_data.email,
      "hirable": user_data.hirable,
      "public_repos": user_data.publicReposCount,
      "public_gists": user_data.publicGistsCount,
      "create_date": user_data.createdAt?.millisecondsSinceEpoch,
      "update_date": user_data.updatedAt?.millisecondsSinceEpoch,
      "twitter_username": user_data.twitterUsername,
      "events_url": user_data.eventsUrl,
      "followers_url": user_data.followersUrl,
      "following_url": user_data.followingUrl,
      "gists_url": user_data.gistsUrl,
      "gravatar_id": user_data.gravatarId,
      "node_id": user_data.nodeId,
      "organizations_url": user_data.organizationsUrl,
      "received_events_url": user_data.receivedEventsUrl,
      "repos_url": user_data.reposUrl,
      "starred_at": user_data.starredAt,
      "starred_url": user_data.starredUrl,
      "subscriptions_url": user_data.subscriptionsUrl,
      "url": user_data.url,
    };

    return scheme.User(jsonData);
  }

  Future<scheme.Users> getUsers({
    required List<String> user_ids,
    int pages = 0,
    String? tokenGithub,
  }) async {
    GitHub gitHub = git_hub(
      tokenGithub: tokenGithub,
    );

    List<User> user_data =
        await (gitHub.users.getUsers(user_ids, pages: pages).toList());

    List<Map> users =
        user_data.where((element) => element.id != null).map((User user_data) {
      Map jsonData = {
        "@type": "user",
        "id": user_data.id,
        "name": user_data.name,
        "username": user_data.login,
        "company": user_data.company,
        "bio": user_data.bio,
        "type": user_data.type?.toLowerCase(),
        "followers_count": user_data.followersCount,
        "following_count": user_data.followingCount,
        "location": user_data.location,
        "avatar_url": user_data.avatarUrl,
        "html_url": user_data.htmlUrl,
        "site_admin": user_data.siteAdmin,
        "blog": user_data.blog,
        "email": user_data.email,
        "hirable": user_data.hirable,
        "public_repos": user_data.publicReposCount,
        "public_gists": user_data.publicGistsCount,
        "create_date": user_data.createdAt?.millisecondsSinceEpoch,
        "update_date": user_data.updatedAt?.millisecondsSinceEpoch,
        "twitter_username": user_data.twitterUsername,
        "events_url": user_data.eventsUrl,
        "followers_url": user_data.followersUrl,
        "following_url": user_data.followingUrl,
        "gists_url": user_data.gistsUrl,
        "gravatar_id": user_data.gravatarId,
        "node_id": user_data.nodeId,
        "organizations_url": user_data.organizationsUrl,
        "received_events_url": user_data.receivedEventsUrl,
        "repos_url": user_data.reposUrl,
        "starred_at": user_data.starredAt,
        "starred_url": user_data.starredUrl,
        "subscriptions_url": user_data.subscriptionsUrl,
        "url": user_data.url,
      };
      return jsonData;
    }).toList();
    Map jsonData = {
      "@type": "users",
      "total_count": users.length,
      "users": users,
    };
    return scheme.Users(jsonData);
  }
}
