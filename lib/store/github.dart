import 'package:github/github.dart';
import 'package:mobx/mobx.dart';

part 'github.g.dart';

class GitHubStore = _GitHubStore with _$GitHubStore;

abstract class _GitHubStore with Store {

  final client = GitHub();

  @observable
  List<Repository> repositories = [];

  @action
  Future<void> fetchRepos(String username) async {
    repositories = [];
    final repos = await client.repositories.listUserRepositories(username, sort: "updated").toList();
    repositories = repos;
  }

  static ObservableFuture<List<Repository>> emptyResponse = ObservableFuture.value([]);
}
