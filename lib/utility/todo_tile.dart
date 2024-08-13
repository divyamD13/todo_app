import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isTaskDone;
  final void Function(bool?)? onChanged;
  TodoTile({
    super.key,
    required this.taskName,
    required this.isTaskDone,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 20,
        right: 15,
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.purple[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Checkbox(
              value: isTaskDone,
              onChanged: onChanged,
              activeColor: const Color.fromARGB(255, 185, 45, 92),
            ),
            Text(taskName,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 0.5,
                )),
          ],
        ),
      ),
    );
  }
}
