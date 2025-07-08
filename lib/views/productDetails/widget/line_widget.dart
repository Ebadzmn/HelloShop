import 'package:flutter/material.dart';

class Line_widget extends StatelessWidget {
  const Line_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
      child: SizedBox(
        height: 1,
        width: double.infinity,
        child: Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
