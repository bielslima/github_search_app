import 'package:dartz/dartz.dart';
import 'package:github_search_repository/core/error/failures.dart';
import 'package:github_search_repository/data/models/user.model.dart';
import 'package:github_search_repository/data/repositories/user.repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FindUserUseCase {
  final UserRepository _repository;
  FindUserUseCase(this._repository);

  Future<Either<SearchFailure, UserModel>> call({required String username}) {
    return _repository.findUser(username);
  }
}
