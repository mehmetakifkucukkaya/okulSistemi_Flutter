// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//* Drawer elemanlarını içern Widget.

class DrawerTile extends StatelessWidget {
  final String title;
  final String route;

  const DrawerTile({
    super.key,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      onTap: () {
        //* Sayfa geçişi yapıldığında Draewer kapansın
        Navigator.pop(context);

        Navigator.pushNamed(context, route);
      },
    );
  }
}
