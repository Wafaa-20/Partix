import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/card/domain/entities/card.dart';
import 'package:partix/features/card/domain/repositories/card_repository.dart';

class GetCard {
  final CardRepository repository;

  GetCard(this.repository);

  Future<Either<Failure, Card>> call() async {
    return await repository.getCard();
  }
}
