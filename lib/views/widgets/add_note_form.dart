import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNotForm extends StatefulWidget {
  const AddNotForm({
    super.key,
  });

  @override
  State<AddNotForm> createState() => _AddNotFormState();
}

class _AddNotFormState extends State<AddNotForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (p0) {
              title = p0;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (p0) {
              subTitle = p0;
            },
            hint: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          const ColorListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var currentDate = DateTime.now();
                    var formattedCurrentDate =
                        DateFormat('dd-mm-yyyy').format(currentDate);
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}


