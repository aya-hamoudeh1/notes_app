import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
