import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'drawer_item.dart';

class DrawerItems {
  static const home = DrawerItem(item: "Home", icon: FontAwesomeIcons.home);
  static const profile =
      DrawerItem(item: "Home", icon: FontAwesomeIcons.userAlt);
  static const share = DrawerItem(item: "Home", icon: FontAwesomeIcons.share);
  static const contact = DrawerItem(item: "Home", icon: FontAwesomeIcons.phone);
  static const settings = DrawerItem(item: "Home", icon: Icons.settings);
  static const logout = DrawerItem(item: "Home", icon: FontAwesomeIcons.signOutAlt);

  static final List<DrawerItem> all = [
    home,
    profile,
    share,
    contact,
    logout,
  ];
}
