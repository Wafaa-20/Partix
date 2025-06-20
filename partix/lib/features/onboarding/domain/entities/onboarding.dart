import 'package:equatable/equatable.dart';

class Onboarding extends Equatable {
  final String id;
  final String name;

  const Onboarding({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
