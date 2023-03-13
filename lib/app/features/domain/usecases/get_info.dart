import 'package:dartz/dartz.dart';
import 'package:kn_fit_app/app/features/domain/repositories/student_repository.dart';

import '../../../core/errors/failure.dart';
import '../entities/student_entity.dart';

class GetInfo {
  final StudentRepository studentRepository;

  GetInfo({required this.studentRepository});

  Future<Either<Failure, StudentEntity>> call() async {
    return await studentRepository.getInfo();
  }
}
