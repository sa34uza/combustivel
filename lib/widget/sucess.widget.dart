import 'package:combustivel/widget/loadingButtom.widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Sucess extends StatelessWidget {
  var result = "";
  Function reset;

  Sucess({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          Text( result,
              style: TextStyle(
                fontSize: 40,
                fontFamily: "Big Shoulders Display",
              ),
              textAlign: TextAlign.center),
          SizedBox(
            height: 20,
          ),
          LoadingButtom(
            busy: false,
            text: "CALCULAR NOVAMENTE",
            func: reset,
          ),
        ],
      ),
    );
  }
}
