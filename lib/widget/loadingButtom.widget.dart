import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingButtom extends StatelessWidget {
  var busy = false;
  var text = "";
  Function func;

  LoadingButtom({
    @required this.busy,
    @required this.text,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.yellowAccent.withOpacity(0.5),
              borderRadius: BorderRadius.circular(80),
            ),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 27,
                ),
              ),
              onPressed: func,
            ),
          );
  }
}
