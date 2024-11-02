import 'package:flutter/cupertino.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: "Title",
          ),
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