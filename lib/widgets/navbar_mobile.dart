import 'package:flutter/material.dart';
import '../helpers/style.dart';

Widget mobileNavBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: active,
        ),
        onPressed: () {
          key.currentState?.openDrawer();
        },
      ),
      backgroundColor: Colors.red.withOpacity(0.2),
      title: Image.asset("assets/logo.png"),
      centerTitle: true,
      elevation: 0,
    );
