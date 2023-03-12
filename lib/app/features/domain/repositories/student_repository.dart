import 'package:dartz/dartz.dart';
import 'package:kn_fit_app/app/core/errors/failure.dart';
import 'package:kn_fit_app/app/features/domain/entities/student_entity.dart';

abstract class StudentRepository {
  Future<Either<Failure, StudentEntity>> getInfo();
}
