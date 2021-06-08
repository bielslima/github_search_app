import 'package:dartz/dartz.dart';
import 'package:github_search_repository/core/error/failures.dart';
import 'package:github_search_repository/data/models/repository.model.dart';
import 'package:github_search_repository/data/repositories/repositories.repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRepositoriesUseCase {
  final RepositoriesRepository _repository;
  SearchRepositoriesUseCase(this._repository);

  Future<Either<SearchFailure, List<RepositoryModel>>> call(
      {required String username}) {
    return _repository.findRepositories(username);
  }
}
