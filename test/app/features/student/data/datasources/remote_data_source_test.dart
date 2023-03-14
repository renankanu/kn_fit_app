import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kn_fit_app/app/core/errors/exception.dart';
import 'package:kn_fit_app/app/features/student/data/data/datasources/remote_data_source.dart';
import 'package:kn_fit_app/app/features/student/data/data/models/student_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'remote_data_source_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late RemoteDataSourceImpl dataSource;
  late MockDio mockDioClient;

  setUp(() {
    mockDioClient = MockDio();
    dataSource = RemoteDataSourceImpl(dioClient: mockDioClient);
  });

  group('get indo student', () {
    final tJson = Map<String, dynamic>.from({
      'id': '00',
      'fullName': 'John Doe',
      'email': '',
    });
    const tModel = StudentModel(
      id: '00',
      fullName: 'John Doe',
      email: '',
    );

    test(
      'should return student info when the response code is 200',
      () async {
        // arrange
        when(mockDioClient.get(any)).thenAnswer(
          (_) async => Response(
            data: tJson,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );
        // act
        final result = await dataSource.getInfoStudent('00');
        // assert
        expect(result, equals(tModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        when(mockDioClient.get(any)).thenAnswer(
          (_) async => Response(
            data: tJson,
            statusCode: 404,
            requestOptions: RequestOptions(path: ''),
          ),
        );
        // act
        final call = dataSource.getInfoStudent;
        // assert
        expect(() => call('00'), throwsA(isA<ServerException>()));
      },
    );
  });
}
