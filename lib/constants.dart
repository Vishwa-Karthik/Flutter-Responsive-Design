// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey,
  child: Column(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      const DrawerHeader(child: const Icon(Icons.favorite)),
      const ListTile(
        leading: Icon(Icons.home),
        title: Text(" D A S H B O A R D "),
      ),
      const ListTile(
        leading: const Icon(Icons.chat),
        title: Text(" M E S S A G E "),
      ),
      const ListTile(
        leading: const Icon(Icons.settings),
        title: Text(" S E T T I N G S "),
      ),
      const ListTile(
        leading: const Icon(Icons.logout),
        title: const Text(" L O G O U T  "),
      ),
    ],
  ),
);
