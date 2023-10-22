import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:sharbel_project1/globals.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    final globalVariables = context.read<GlobalVariables>();
    return Container(
        padding: const EdgeInsets.fromLTRB(170, 20, 170, 0),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 122, 164, 214),
            )),
            onPressed: () {
              if (globalVariables.clicked1 &&
                  globalVariables.clicked3 &&
                  globalVariables.slid1.toInt() == 30 &&
                  globalVariables.slid2.toInt() == 70 &&
                  globalVariables.slid3.toInt() == 50 &&
                  globalVariables.textController.text.isNotEmpty) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Alert Dialog'),
                      content: const Text('You are done!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the dialog when the "OK" button is pressed
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: const Text("Done")));
  }
}
