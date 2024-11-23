import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xfff94144),
    Color(0xfff3722c),
    Color(0xfff8961e),
    Color(0xfff9844a),
    Color(0xfff9c74f),
    Color(0xff90be6d),
    Color(0xff43aa8b),
    Color(0xff4d908e),
    Color(0xff577590),
    Color(0xff277da1),
    Color(0xff5d2a42),
    Color(0xfffb6376),
    Color(0xfffcb1a6),
    Color(0xffa5be00),
    Color(0xffbb6b00),
    Color(0xff934b00),
    Color(0xff690500),
    Color(0xff452103),
    Color(0xff242331),
    Color(0xfff78764),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
