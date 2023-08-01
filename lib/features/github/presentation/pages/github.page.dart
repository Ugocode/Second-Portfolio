import 'package:flutter/material.dart';

class GitHubPage extends StatelessWidget {
  static const String route = "/github";
  const GitHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'GitHub  Page!',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
