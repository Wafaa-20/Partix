import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/item_details/data/datasources/item_details_datasource.dart';
import 'package:partix/features/item_details/domain/entities/item_details.dart';
import 'package:partix/features/item_details/domain/repositories/item_details_repository.dart';

class Item_detailsRepositoryImpl implements Item_detailsRepository {
  final Item_detailsDatasource datasource;

  Item_detailsRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Item_details>> getItem_details() async {
    try {
      final result = await datasource.getItem_details();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
