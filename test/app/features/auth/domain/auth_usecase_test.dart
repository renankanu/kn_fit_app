import 'package:flutter_test/flutter_test.dart';
import 'package:kn_fit_app/app/features/auth/domain/entities/auth_entity.dart';
import 'package:kn_fit_app/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:kn_fit_app/app/features/auth/domain/usecases/auth_user.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_usecase_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late MockAuthRepository mockAuthRepository;
  late AuthUser authUser;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    authUser = AuthUser(authRepository: mockAuthRepository);
  });

  const tAuth = AuthEntity(
    email: 'test@test.com',
    password: '123123',
  );

  test('should auth user', () async {
    // arrange
    when(mockAuthRepository.login(any)).thenAnswer((_) => Future.value());
    // act
    await authUser(tAuth);
    // assert
    verify(mockAuthRepository.login(tAuth));
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
