import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/item_details/domain/entities/item_details.dart';

abstract class Item_detailsRepository {
  Future<Either<Failure, Item_details>> getItem_details();
}
