import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/button/custom_icon_button.dart';
import 'package:partix/features/card/presentation/bloc/card_bloc.dart';
import 'package:partix/features/card/presentation/bloc/card_event.dart';
import 'package:partix/features/card/presentation/bloc/card_state.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});
  // final CardBloc bloc;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CardBloc>();
    return BlocBuilder<CardBloc, CardState>(
      builder: (context, state) {
        // final count = state is ItemState ? state.count : 1;
        return Container(
          width: 105,
          height: 30,
          decoration: BoxDecoration(
            color: AppPalette.grayLight2,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomIconButton(
                size: 16,
                color: AppPalette.grayColor,
                onPressed: () {
                  bloc.add(DecreaseItem());
                  // print(count);
                },
                icon: (Icons.remove),
              ),

              Text(bloc.count.toString()),

              CustomIconButton(
                size: 16,
                color: AppPalette.grayColor,
                onPressed: () {
                  bloc.add(IncreaseItem());
                  // print(count);
                },
                icon: (Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
