// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    Key? key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Create a new todo
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            // buttons to save and cancel

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                Mybutton(
                  text: "Save",
                  onpressed: onSave,
                ),
                const SizedBox(
                  width: 10,
                ),
                // cancel button
                Mybutton(
                  text: "Cancel",
                  onpressed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
