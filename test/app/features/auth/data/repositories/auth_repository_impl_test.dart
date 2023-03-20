import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
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

    const tAuthEntity = tAuthModel;

    test(
        'shown return a token when the call on remote data source is successful',
        () async {
      // arrange
      when(mockRemoteDataSource.authUser(
              email: anyNamed('email'), password: anyNamed('password')))
          .thenAnswer((_) async => tAuthEntity);
      // act
      final result = await authRepositoryImpl.login(tAuthEntity);
      // assert
      verify(mockRemoteDataSource.authUser(
        email: tAuthEntity.email,
        password: tAuthEntity.password,
      ));
      expect(result, equals(const Right(tAuthEntity)));
    });
  });
}
