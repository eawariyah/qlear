import 'package:flutter/material.dart';

class FormImageCardLeft extends StatelessWidget {
  final String ImagePath;
  final String CardTitle;
  final VoidCallback? WhatToDo;

  FormImageCardLeft({
    required this.ImagePath,
    required this.CardTitle,
    this.WhatToDo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: WhatToDo,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 0,
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFF1E1E1E), width: 2),
                image: DecorationImage(
                  image: AssetImage(ImagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      CardTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
