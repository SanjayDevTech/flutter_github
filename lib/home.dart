import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'store/github.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _githubStore = GitHubStore();
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter GitHub'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter the GitHub username",
                        label: Text("GitHub Username"),
                      ),
                      controller: _searchController,
                    ),
                  ),
                  Flexible(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          _githubStore.fetchRepos(_searchController.text);
                        },
                        icon: const Icon(Icons.search),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Observer(
              builder: (context) {
                final repos = _githubStore.repositories;
                if (repos.isEmpty) {
                  return const Center(
                    child: Text("No repo"),
                  );
                }
                return ListView.builder(
                  itemCount: repos.length,
                  itemBuilder: (context, index) {
                    final repo = repos[index];
                    return ListTile(
                      title: Text(repo.fullName),
                      subtitle: Text(repo.description),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              const Icon(Icons.restaurant),
                              Text(repo.forksCount.toString()),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(Icons.star),
                              Text(repo.stargazersCount.toString()),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
