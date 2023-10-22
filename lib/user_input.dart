import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharbel_project1/globals.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    final globalVariables = context.read<GlobalVariables>();
    return TextField(
      // obscureText: true,
      controller: globalVariables.textController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your first and last name',
      ),
    );
  }
}
