import 'package:flutter/material.dart';

class FloatingButtonInput extends StatelessWidget {
  final String FloatingButtonTextOne;
  final String FloatingButtonTextTwo;

  FloatingButtonInput({
    required this.FloatingButtonTextOne,
    required this.FloatingButtonTextTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10),
      child: Row(
        children: [
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(10)), // Set padding to zero
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  backgroundColor: WidgetStateProperty.all(Color(0xFF1E1E1E)),
                ),
                onPressed: null,
                child: Text(
                  FloatingButtonTextOne,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(10)), // Set padding to zero
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  backgroundColor: WidgetStateProperty.all(Color(0xFF1E1E1E)),
                ),
                onPressed: null,
                child: Text(
                  FloatingButtonTextTwo,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
          )),
          Spacer()
        ],
      ),
    );
  }
}
