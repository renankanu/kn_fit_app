import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kn_fit_app/app/core/errors/exception.dart';
import 'package:kn_fit_app/app/core/errors/failure.dart';
import 'package:kn_fit_app/app/features/student/data/data/datasources/remote_data_source.dart';
import 'package:kn_fit_app/app/features/student/data/data/models/student_model.dart';
import 'package:kn_fit_app/app/features/student/data/data/repositories/student_repository_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'student_repository_test.mocks.dart';

@GenerateMocks([RemoteDataSource])
void main() {
  late StudentRepositoryImpl studentRepositoryImpl;
  late MockRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    studentRepositoryImpl =
        StudentRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  group('get info student', () {
    const tStudentModel = StudentModel(
      id: '00',
      fullName: 'John Doe',
    );

    const tStudentEntity = tStudentModel;
    test(
        'should return student info data when the call on remote data source is successful',
        () async {
      // arrange
      when(mockRemoteDataSource.getInfoStudent(any))
          .thenAnswer((_) async => tStudentEntity);
      // act
      final result = await studentRepositoryImpl.getInfo();
      // assert
      verify(mockRemoteDataSource.getInfoStudent('00'));
      expect(result, equals(const Right(tStudentEntity)));
    });

    test(
        'should return serve failure when the call to remote data source is unsuccessful',
        () async {
      // arrange
      when(mockRemoteDataSource.getInfoStudent(any))
          .thenThrow(ServerException());
      // act
      final result = await studentRepositoryImpl.getInfo();
      // assert
      verify(mockRemoteDataSource.getInfoStudent('00'));
      expect(
        result,
        equals(
          const Left(
            ServerFailure('Server Failure in getInfo'),
          ),
        ),
      );
    });

    test('should return server failure when device has no connection',
        () async {
      // arrange
      when(mockRemoteDataSource.getInfoStudent(any))
          .thenThrow(const SocketException('Connection Failure in getInfo'));
      // act
      final result = await studentRepositoryImpl.getInfo();
      // assert
      verify(mockRemoteDataSource.getInfoStudent('00'));
      expect(
        result,
        equals(
          const Left(
            ConnectionFailure('Connection Failure in getInfo'),
          ),
        ),
      );
    });
  });
}
