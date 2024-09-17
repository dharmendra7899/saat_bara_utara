import 'package:fpdart/fpdart.dart';
import 'package:saat_bara_utara/app/core/errors/failures.dart';



abstract class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}
