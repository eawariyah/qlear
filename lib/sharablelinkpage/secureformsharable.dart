import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_link_previewer/flutter_link_previewer.dart';

import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' show PreviewData;
import 'package:flutter_link_previewer/flutter_link_previewer.dart';

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

  final String imageUrl = 'https://eawariyah.github.io/qlear/QRCODE.png';
  TextEditingController controller = TextEditingController();

  Map<String, PreviewData> datas = {};

  final style = TextStyle(
    color: Colors.red,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.375,
  );
  List<String> get urls => const [
        // 'github.com/flyerhq',
        'https://www.parkpilot.info',

        // 'https://u24.gov.ua',
        // 'https://twitter.com/SpaceX/status/1564975288655630338',
      ];
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

  // Future<void> _launchUrl() async {
  //   if (!await launchUrl(_url)) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }

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
                  height: 300,
                  child: ListView.builder(
                    itemCount: urls.length,
                    itemBuilder: (context, index) => Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        key: ValueKey(urls[index]),
                        margin: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color(0xfff7f7f8),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: LinkPreview(
                            enableAnimation: true,
                            onPreviewDataFetched: (data) {
                              setState(() {
                                datas = {
                                  ...datas,
                                  urls[index]: data,
                                };
                              });
                            },
                            previewData: datas[urls[index]],
                            text: "Share: " + urls[index],
                            // text: "",
                            openOnPreviewImageTap: true,

                            width: MediaQuery.of(context).size.width,
                            linkStyle: style,
                            metadataTextStyle: style.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            metadataTitleStyle: style.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
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
