import 'package:flutter/material.dart';

class GitHubPageModel {
  String title;
  String url;
  IconData gitHubIcon;
  String subTitle;

  GitHubPageModel(
      {required this.gitHubIcon,
      required this.subTitle,
      required this.title,
      required this.url});
}
