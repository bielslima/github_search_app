import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_search_repository/core/error/failures.dart';
import 'package:github_search_repository/core/http/http_client.dart';
import 'package:github_search_repository/data/models/repository.model.dart';
import 'package:injectable/injectable.dart';

@injectable
class RepositoriesRepository {
  final HttpClient _httpClient;
  RepositoriesRepository(this._httpClient);

  Future<Either<SearchFailure, List<RepositoryModel>>> findRepositories(
      String username) async {
    try {
      final Response response =
          await this._httpClient.getHttp('/users/$username/repos');

      final List<RepositoryModel> listReturn = [];

      for (final repo in response.data) {
        listReturn.add(RepositoryModel.fromJson(repo));
      }

      return right(listReturn);
    } on DioError catch (e) {
      print(e);

      switch (e.response?.statusCode) {
        case 404:
          return left(NotFoundUser());
        default:
          return left(ServerErrorFailure(e.toString()));
      }
    } catch (e) {
      print(e);
      return left(ServerErrorFailure(e.toString()));
    }
  }
}
