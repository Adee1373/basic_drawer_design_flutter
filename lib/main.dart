import 'package:flutter/material.dart';

void main() {
  runApp(const ForMaterialApp());
}

class ForMaterialApp extends StatelessWidget {
  const ForMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ForDrawer(),
    );
  }
}

class ForDrawer extends StatelessWidget {
  const ForDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Drawer Design"),
        centerTitle: true,
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            // DrawerHeader(
            //   decoration:
            //       const BoxDecoration(color: Color.fromARGB(255, 64, 142, 220)),
            //   child: Text(
            //     'data',
            //     style: TextStyle(color: Colors.amber[50]),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text('XYZ'),
              accountEmail: Text('XYZemail@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('XYZ'),
              subtitle: Text('person 1'),
              trailing: Icon(Icons.pending_actions),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('XYZ'),
              subtitle: Text('person 2'),
              trailing: Icon(Icons.pending_actions),
            ),
          ],
        ),
      ),
    );
  }
}
