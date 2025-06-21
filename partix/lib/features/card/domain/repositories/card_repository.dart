import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/card/domain/entities/card.dart';

abstract class CardRepository {
  Future<Either<Failure, Card>> getCard();
}
