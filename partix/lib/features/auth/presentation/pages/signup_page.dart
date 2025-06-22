import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:partix/features/auth/presentation/bloc/auth_state.dart';
import 'package:partix/features/auth/presentation/widgets/signup_widget.dart';
import 'package:partix/routes/app_routes.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthBloc(),
        child: Builder(
          builder: (context) {
            final bloc = context.read<AuthBloc>();
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Signed up successfully!")),
                  );
                  context.pushReplacement(Routes.home);
                } else if (state is AuthFailure) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.message)));
                }
              },
              child: SafeArea(
                bottom: false,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 50,
                      child: Image.asset("asset/image/signup.png"),
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
                        child: BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            if (state is AuthLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            return Form(
                              key: bloc.formKey,
                              child: SignupWidget(bloc: bloc),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
