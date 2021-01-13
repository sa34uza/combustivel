import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'input.widget.dart';
import 'loadingButtom.widget.dart';

// ignore: must_be_immutable
class SubmitForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Input(
          ctrl: gasCtrl,
          label: "GASOLINA",
        ),
        Input(
          ctrl: alcCtrl,
          label: "ÁLCOOL",
        ),
        LoadingButtom(
          busy: busy,
          text: "CALCULAR",
          func: submitFunc,
        )
      ],
    );
  }
}
