import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kn_fit_app/app/features/auth/domain/entities/auth_entity.dart';
import 'package:kn_fit_app/app/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failure.dart';
import '../datasources/remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.remoteDataSource,
  });

  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, void>> login(AuthEntity auth) async {
    try {
      await remoteDataSource.authUser(
        email: auth.email,
        password: auth.password,
      );
      return const Right(null);
    } on ServerException {
      return const Left(ServerFailure('Server Failure in login'));
    } on SocketException {
      return const Left(ConnectionFailure('Connection Failure in login'));
    }
  }
}
