import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kn_fit_app/app/core/errors/failure.dart';
import 'package:kn_fit_app/app/features/student/domain/entities/student_entity.dart';
import 'package:kn_fit_app/app/features/student/domain/repositories/student_repository.dart';

import '../../../../../core/errors/exception.dart';
import '../datasources/remote_data_source.dart';

class StudentRepositoryImpl implements StudentRepository {
  StudentRepositoryImpl({required this.remoteDataSource});

  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, StudentEntity>> getInfo() async {
    try {
      final result = await remoteDataSource.getInfoStudent('00');
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure('Server Failure in getInfo'));
    } on SocketException {
      return const Left(ConnectionFailure('Connection Failure in getInfo'));
    }
  }
}
