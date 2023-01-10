import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class E404 extends StatelessWidget {
  const E404({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(child: Text("Page not found")),
    );
  }
}
