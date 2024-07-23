import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyHome()));

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: null,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: null,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              const Spacer(),
              BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add),
                    label: 'Create form',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.qr_code),
                    label: 'Scan form',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Me',
                  ),
                ],
                onTap: (index) {
                  if (index == 0) {
                    Navigator.pushNamed(context, "/second");
                  }
                  if (index == 1) {
                    Navigator.pushNamed(context, "/third");
                  }
                  if (index == 2) {
                    Navigator.pushNamed(context, "/fourth");
                  }
                },
                backgroundColor: Colors.black,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white54,
              ),
            ],
          ),
        ));
  }
}
