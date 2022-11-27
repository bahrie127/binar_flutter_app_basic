import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binar - Drawer"),
        actions: const [],
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.amber[50],
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    // radius: 80,
                    child: FlutterLogo(size: 50),
                  ),
                  decoration: BoxDecoration(color: Colors.deepOrange[200]),
                  accountName: const Text('Zaki Rozak'),
                  accountEmail: const Text('rozak.zaki@gmail.com'),
                ),
                // DrawerHeader(
                //   decoration: BoxDecoration(color: Colors.pink[100]),
                //   child: Container(
                //       color: Colors.green[100], child: Text('Settings')),
                // ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Menu 3'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
