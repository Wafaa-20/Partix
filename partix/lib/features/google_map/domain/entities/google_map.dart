import 'package:equatable/equatable.dart';

class Google_map extends Equatable {
  final String id;
  final String name;

  const Google_map({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
