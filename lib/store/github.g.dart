// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GitHubStore on _GitHubStore, Store {
  late final _$repositoriesAtom =
      Atom(name: '_GitHubStore.repositories', context: context);

  @override
  List<Repository> get repositories {
    _$repositoriesAtom.reportRead();
    return super.repositories;
  }

  @override
  set repositories(List<Repository> value) {
    _$repositoriesAtom.reportWrite(value, super.repositories, () {
      super.repositories = value;
    });
  }

  late final _$fetchReposAsyncAction =
      AsyncAction('_GitHubStore.fetchRepos', context: context);

  @override
  Future<void> fetchRepos(String username) {
    return _$fetchReposAsyncAction.run(() => super.fetchRepos(username));
  }

  @override
  String toString() {
    return '''
repositories: ${repositories}
    ''';
  }
}
