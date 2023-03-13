import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kn_fit_app/app/features/domain/entities/student_entity.dart';
import 'package:kn_fit_app/app/features/domain/repositories/student_repository.dart';
import 'package:kn_fit_app/app/features/domain/usecases/get_info.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_info_test.mocks.dart';

@GenerateMocks([StudentRepository])
void main() {
  late MockStudentRepository mockStudentRepository;
  late GetInfo getInfo;
  setUp(() {
    mockStudentRepository = MockStudentRepository();
    getInfo = GetInfo(studentRepository: mockStudentRepository);
  });

  const tStudentEntity = StudentEntity(
    id: '00',
    fullName: 'Renan Santos',
  );

  test(
    'should get info from student',
    () async {
      // arrange
      when(mockStudentRepository.getInfo())
          .thenAnswer((_) async => const Right(tStudentEntity));
      // act
      final result = await getInfo();
      // assert
      expect(result, const Right(tStudentEntity));
      verify(mockStudentRepository.getInfo());
      verifyNoMoreInteractions(mockStudentRepository);
    },
  );
}
