import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:share_plus/share_plus.dart';

// import 'package:share_plus/share_plus.dart';

// void main() {
//   runApp(MyApp());
// }

class QuizFormSharable extends StatefulWidget {
  const QuizFormSharable({super.key});

  @override
  State<QuizFormSharable> createState() => _QuizFormSharableState();
}

class _QuizFormSharableState extends State<QuizFormSharable> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            title: const Row(
              children: [
                Spacer(),
                const ElevatedButton(
                    onPressed: null,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 2,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black,
                        height: 200,
                        width: MediaQuery.sizeOf(context).width,
                        child: Image.asset(
                          "assets/QRCODE.png",
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Container(
                          color: Colors.black,
                          width: MediaQuery.sizeOf(context).width,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: null,
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        Color(0xFF1E1E1E))),
                                child: Text('Save QR code',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "Poppins",
                                        color: Colors.white)),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Clipboard.setData(new ClipboardData(text: controller.text))
                        .then((_) {
                      controller.clear();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Copied to your clipboard !')));
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        'www.qrcodeplus.com/iuadsnif45' + controller.text,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 150,
                        height: 80,
                        child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(10)), // Set padding to zero
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                            backgroundColor:
                                WidgetStateProperty.all(Color(0xFF1E1E1E)),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.share, color: Colors.white),
                              Text('Share link',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Poppins",
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.description,
                      color: Colors.blue), // Set icon color here
                  title: const Text('My Forms'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.assignment,
                      color: Colors.green), // Set icon color here
                  title: const Text('Active Forms'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
