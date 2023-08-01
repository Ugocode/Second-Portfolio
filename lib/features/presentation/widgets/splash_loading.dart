import 'package:flutter/material.dart';

//creating a new custom widget
class SplashLoading extends StatelessWidget {
  const SplashLoading({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Stack(children: const [
            Center(
              child: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 50,
              ),
            ),
            Center(
              child: SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            )
          ]),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          message,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ));
  }
}
