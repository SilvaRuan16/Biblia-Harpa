import 'package:biblia_e_harpa/src/config.dart';
import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent(this.title, {super.key});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: whiteColor)),
      backgroundColor: mainColor,
      centerTitle: true,
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(color: whiteColor),
    );
  }
}