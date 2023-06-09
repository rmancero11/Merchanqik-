import 'package:merchan/common/widgets/widgets.dart';
import 'package:merchan/config/config.dart';
import 'package:flutter/material.dart';
import 'package:merchan/domain/enums/ui.dart';
import 'package:merchan/ui/views/auth/register/widgets/heading.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Row(
      children: [
        Expanded(
          child: Scaffold(
            backgroundColor: qDarkBlueColor,
            body: Padding(
              padding: qPaddingSymmetric(16, 24),
              child: SizedBox(
                width: responsive.width(),
                height: responsive.heightPercent(88),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    qSpaceV12,
                    const HeaderMerchant(),
                    const Spacer(),
                    const TermsAndPrivacy(),
                    qSpaceV24,
                    Column(
                      children: <Widget>[
                        BottomButton(
                          label: "Crear cuenta",
                          callback: () {},
                        ),
                        qSpaceV12,
                        BottomButton(
                          label: "¿Ya tienes una cuenta? Inicia sesión aquí",
                          callback: () => {},
                          type: ButtonType.TEXT,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
