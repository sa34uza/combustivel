import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  var label = "";
  var ctrl = MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 170,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
