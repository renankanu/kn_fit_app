import 'package:kn_fit_app/app/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future<void> login(AuthEntity auth);
}
