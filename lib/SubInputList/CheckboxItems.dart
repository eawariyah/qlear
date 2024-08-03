import 'package:flutter/material.dart';

class CheckboxItems extends StatelessWidget {
  final String checkboxItemValue;

  CheckboxItems({
    required this.checkboxItemValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, left: 50.0),
      child: Row(
        children: [
          Icon(Icons.check_box_outlined, color: Colors.white),
          SizedBox(
            width: 8,
          ),
          Text(checkboxItemValue,
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
