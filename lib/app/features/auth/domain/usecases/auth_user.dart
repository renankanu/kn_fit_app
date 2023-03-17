import 'package:kn_fit_app/app/features/auth/domain/entities/auth_entity.dart';

import '../repositories/auth_repository.dart';

class AuthUser {
  final AuthRepository authRepository;

  AuthUser({required this.authRepository});

  Future<void> call(AuthEntity auth) async {
    return await authRepository.login(auth);
  }
}
