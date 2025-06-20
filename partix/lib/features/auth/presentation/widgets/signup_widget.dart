import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/widget/button/custom_button.dart';
import 'package:partix/core/widget/custom_text_field.dart';
import 'package:partix/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:partix/features/auth/presentation/widgets/country_code.dart';
import 'package:partix/routes/app_routes.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key, required this.bloc});
  final AuthBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppText.signUp, style: TextStyles.sepro60036),
          SizedBox(height: 24),
          CustomTextField(
            controller: bloc.emailController,
            hintText: AppText.hintEmail,
            labelText: AppText.email,
          ),
          SizedBox(height: 24),
          CustomTextField(
            controller: bloc.passwordController,
            hintText: AppText.hintPassword,
            labelText: AppText.password,
            suffixIcon: Icon(Icons.remove_red_eye),
            obscureText: true,
          ),
          SizedBox(height: 24),
          CustomTextField(
            controller: bloc.mobController,
            hintText: AppText.hintmobileNumber,
            labelText: AppText.mobileNumber,
            prefixIcon: CountryCode(),
          ),
          SizedBox(height: 28),
          Center(
            child: CustomButton(
              onPressed: () {},
              child: Text(AppText.signUp, style: TextStyles.sepro70020),
            ),
          ),
          SizedBox(height: 28),

          Center(
            child: Text.rich(
              TextSpan(
                style: TextStyles.sepro40012,
                children: [
                  TextSpan(text: AppText.haveAccount),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.pushNamed(Names.login);
                      },
                    text: ' ${AppText.login}',
                    style: TextStyles.sepro50012,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}