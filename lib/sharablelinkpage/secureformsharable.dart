import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class SecureFormSharable extends StatefulWidget {
  const SecureFormSharable({super.key});

  @override
  State<SecureFormSharable> createState() => _SecureFormSharableState();
}

class _SecureFormSharableState extends State<SecureFormSharable> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  final String imageUrl = 'https://eawariyah.github.io/qlear/QRCODE.png';

  Future<void> saveQRCode() async {
    // Request permission to access photos/media/gallery
    var permissionStatus = await Permission.storage.request();
    if (permissionStatus.isGranted) {
      // Download image
      var response = await Dio()
          .get(imageUrl, options: Options(responseType: ResponseType.bytes));

      // Save image to gallery
      final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 100,
        name: "qrcode_image",
      );
      print(
          result); // You can use this to check if the image was saved successfully
    } else {
      print('Permission not granted. Unable to save QR code.');
    }
  }

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
                  height: MediaQuery.sizeOf(context).height * 0.45,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Image.network(
                          imageUrl,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: saveQRCode,
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF1E1E1E)),
                        ),
                        child: Text(
                          'Save Sharable QR Code',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.amber,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Clipboard.setData(new ClipboardData(text: controller.text))
                //         .then((_) {
                //       controller.clear();
                //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //           content: Text('Copied to your clipboard !')));
                //     });
                //   },
                //   child: Column(
                //     children: [
                //       Text(
                //         'www.qrcodeplus.com/iuadsnif45' + controller.text,
                //         style: TextStyle(
                //             fontSize: 20,
                //             fontFamily: "Poppins",
                //             color: Colors.black),
                //       ),
                //       SizedBox(
                //         height: 30,
                //       ),
                //       Container(
                //         width: 150,
                //         height: 80,
                //         child: ElevatedButton(
                //           onPressed: null,
                //           style: ButtonStyle(
                //             padding: WidgetStateProperty.all<EdgeInsets>(
                //                 EdgeInsets.all(10)), // Set padding to zero
                //             shape:
                //                 WidgetStateProperty.all<RoundedRectangleBorder>(
                //                     RoundedRectangleBorder(
                //                         borderRadius:
                //                             BorderRadius.circular(10))),
                //             backgroundColor:
                //                 WidgetStateProperty.all(Color(0xFF1E1E1E)),
                //           ),
                //           child: Column(
                //             children: [
                //               Icon(Icons.share, color: Colors.white),
                //               Text('Share link',
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontFamily: "Poppins",
                //                       color: Colors.white)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
