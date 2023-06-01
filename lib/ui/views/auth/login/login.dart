import 'package:merchan/common/widgets/widgets.dart';
import 'package:merchan/config/config.dart';
import 'package:flutter/material.dart';
import 'package:merchan/domain/enums/ui.dart';
import 'package:merchan/ui/views/auth/login/widgets/heading.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
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
                    const LoginHeaderMerchant(),
                    const Spacer(),
                    Column(
                      children: <Widget>[
                        BottomButton(
                          label: "Ingresar",
                          callback: () {},
                        ),
                        qSpaceV12,
                        BottomButton(
                          label: "¿Olvidaste tu contraseña?",
                          callback: () => {},
                          type: ButtonType.TEXT,
                          textColor: qWhite,
                        ),
                        BottomButton(
                          label: "¿No tienes una cuenta? Registrate aquí",
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
