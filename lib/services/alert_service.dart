import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertService{
  void showAlert(
      BuildContext context, String title, String desc, Function onCancel
      ){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => new CupertinoAlertDialog(
          title: new Text("$title"),
          content: new Text("$desc"),
          actions: <Widget>[
            FlatButton(
                child: Text(
                  "Done",
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
              onPressed: onCancel,
            )
          ],
        )
    );
  }
}