import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        // obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter your first and last name',
        ),
      ),
    );
  }
}

// class UserInput extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const SizedBox(
//       width: 400,
//       child: TextField(
//         decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             focusColor: Colors.brown,
//             labelText: 'Enter your first and last name',
//             labelStyle: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
