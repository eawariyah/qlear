import 'package:flutter/material.dart';

class RadioItems extends StatelessWidget {
  final String radioItemValue;

  RadioItems({
    required this.radioItemValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, left: 50.0),
      child: Row(
        children: [
          Icon(Icons.circle_outlined, color: Colors.white),
          SizedBox(
            width: 8,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Row(
              children: [
                Expanded(
                  child: Text(radioItemValue,
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
