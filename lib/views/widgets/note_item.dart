import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips ",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: const Text(
              "build your career with Aya Hamoudeh",
              style: TextStyle(color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ),),
          ),
          const Text(
            "May 21 ,2022",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}