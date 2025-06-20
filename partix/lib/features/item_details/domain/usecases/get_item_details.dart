import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/item_details/domain/entities/item_details.dart';
import 'package:partix/features/item_details/domain/repositories/item_details_repository.dart';

class GetItem_details {
  final Item_detailsRepository repository;

  GetItem_details(this.repository);

  Future<Either<Failure, Item_details>> call() async {
    return await repository.getItem_details();
  }
}
