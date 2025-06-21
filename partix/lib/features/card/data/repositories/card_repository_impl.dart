import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/card/data/datasources/card_datasource.dart';
import 'package:partix/features/card/domain/entities/card.dart';
import 'package:partix/features/card/domain/repositories/card_repository.dart';

class CardRepositoryImpl implements CardRepository {
  final CardDatasource datasource;

  CardRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Card>> getCard() async {
    try {
      final result = await datasource.getCard();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
