import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:partix/features/auth/presentation/widgets/login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthBloc(),
        child: Builder(
          builder: (context) {
            final bloc = context.read<AuthBloc>();
            return SafeArea(
              bottom: false,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Positioned(
                    top: 30,
                    child: Text(AppText.guest, style: TextStyles.sepro50017),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("asset/image/login.png"),
                  ),
                  Positioned(
                    top: 233,
                    child: Container(
                      width: context.getWidth(),
                      height: context.getHeight() * 0.70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(35),
                        ),
                        color: AppPalette.whiteLight2,
                      ),
                      child: LoginWidget(bloc: bloc),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
