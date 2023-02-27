import 'package:flutter/material.dart';

class LoadingModalWidget extends StatelessWidget {
  const LoadingModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(100, 234, 195, 184),
      child: Center(child: Image.asset('assets/load.gif')),
    );
  }
}
