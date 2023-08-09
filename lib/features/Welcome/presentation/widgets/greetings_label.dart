import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/presentation/providers/welcome_page.providers.dart';
import 'package:second_portfolio/features/presentation/viewmodels/greetings_label.viewmodel.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class GreetingsLabel extends ConsumerStatefulWidget {
  const GreetingsLabel({super.key});
  @override
  GreetingsLabelState createState() => GreetingsLabelState();
}

class GreetingsLabelState extends ConsumerState<GreetingsLabel> {
  late GreetingsViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = ref.read(greetingsViewModelProvider.notifier);
    vm.initializeGreetings();
  }

  @override
  void dispose() {
    vm.resetTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var greeting = ref.watch(greetingsViewModelProvider);

    return GradientText(
      greeting,
      style: const TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
      colors: const [
        Colors.green,
        Colors.red,
        Colors.blue,
      ],
    );
  }
}
