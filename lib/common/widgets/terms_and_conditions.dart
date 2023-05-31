
import 'package:merchan/config/values/values.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    // link to terms and privacy inside text
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Al continuar, aceptas los ',
          style: smallStyle(),
          children: <TextSpan>[
            TextSpan(
              text: 'Términos y condiciones ',
              style: smallStyle(textColor: qLightBlueColor),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: 'y la ',
              style: smallStyle(),
            ),
            TextSpan(
              text: 'Política de privacidad ',
              style: smallStyle(textColor: qLightBlueColor),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: 'de Qik',
              style: smallStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
