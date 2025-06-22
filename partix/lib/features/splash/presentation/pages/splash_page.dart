import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:partix/features/splash/presentation/bloc/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(CheckFirstTimeUserEvent()),

      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is FirstTimeUseApp) {
            context.go('/onboarding');
          } else {
            context.go('/login');
          }
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 322,
                  width: 256,
                  child: Image.asset(
                    "asset/image/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
