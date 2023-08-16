import 'package:flutter/material.dart';

class TwitterPageModel {
  final IconData twitterIcon;
  final String title;
  final String subTitle;
  final String handle;
  final String url;

  TwitterPageModel(
      {required this.twitterIcon,
      required this.title,
      required this.subTitle,
      required this.handle,
      required this.url});
}
