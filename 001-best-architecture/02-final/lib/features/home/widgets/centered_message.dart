import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  const CenteredMessage(this.message, {super.key});

  const CenteredMessage.genericError({super.key})
      : message = 'An error occurred';

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
