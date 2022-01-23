import 'package:flutter/material.dart';
import "drawer_items.dart";

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildDrawerItems(context),
        ],
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) => Column(
    children: DrawerItems().all
          .map((items) => ListTile(
            onTap: () {},
            
          )
          )
  );
}
