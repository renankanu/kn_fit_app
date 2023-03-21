import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kn_fit_app/app/core/errors/exception.dart';
import 'package:kn_fit_app/app/core/errors/failure.dart';
import 'package:kn_fit_app/app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:kn_fit_app/app/features/auth/data/models/auth_model.dart';
import 'package:kn_fit_app/app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_impl_test.mocks.dart';

@GenerateMocks([AuthRemoteDataSource])
void main() {
  late AuthRepositoryImpl authRepositoryImpl;
  late MockAuthRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockAuthRemoteDataSource();
    authRepositoryImpl = AuthRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
    );
  });

  group('auth user', () {
    const tAuthModel = AuthModel(
      email: 'test@uorak.com',
      password: '123456',
    );

    test(
        'shown return a token when the call on remote data source is successful',
        () async {
      // arrange
      when(mockRemoteDataSource.authUser(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => tAuthModel);
      // act
      await authRepositoryImpl.login(tAuthModel);
      // assert
      verify(mockRemoteDataSource.authUser(
        email: tAuthModel.email,
        password: tAuthModel.password,
      ));
      verifyNoMoreInteractions(mockRemoteDataSource);
    });

    test(
        'should throw a server failure when the call to remote data source is unsuccessful',
        () async {
      // arrange
      when(mockRemoteDataSource.authUser(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenThrow(ServerException());
      // act
      final result = await authRepositoryImpl.login(tAuthModel);
      // assert
      verify(mockRemoteDataSource.authUser(
        email: tAuthModel.email,
        password: tAuthModel.password,
      ));
      verifyNoMoreInteractions(mockRemoteDataSource);
      expect(
          result,
          equals(const Left(
            ServerFailure('Server Failure in login'),
          )));
    });

    test('should return server failure when device has no connection',
        () async {
      // arrange
      when(mockRemoteDataSource.authUser(
              email: anyNamed('email'), password: anyNamed('password')))
          .thenThrow(
        const SocketException('Connection Failure in login'),
      );
      // act
      final result = await authRepositoryImpl.login(tAuthModel);
      // assert
      verify(mockRemoteDataSource.authUser(
        email: tAuthModel.email,
        password: tAuthModel.password,
      ));
      verifyNoMoreInteractions(mockRemoteDataSource);
      expect(
          result,
          equals(const Left(
            ConnectionFailure('Connection Failure in login'),
          )));
    });
  });
}
