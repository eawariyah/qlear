import 'package:flutter/material.dart';

class DialogCheckboxItems extends StatelessWidget {
  final String dialogCheckboxItemValue;
  final VoidCallback? deleteCheckboxValue;

  DialogCheckboxItems({
    required this.dialogCheckboxItemValue,
    this.deleteCheckboxValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, left: 0.00),
      child: Row(
        children: [
          Spacer(),
          ElevatedButton(
            onPressed: deleteCheckboxValue,
            child: Icon(Icons.check_box_outlined, color: Colors.white),
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              backgroundColor: WidgetStateProperty.all(const Color(0xFF1E1E1E)),
            ),
          ),
          // SizedBox(
          //   width: 8,
          // ),
          SizedBox(
            width: 230,
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: dialogCheckboxItemValue,
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                hintStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
