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
            child: Icon(Icons.cancel_outlined, color: Colors.white),
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
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.05,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Item",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                  hintText: dialogCheckboxItemValue),
            ),
          )
        ],
      ),
    );
  }
}
