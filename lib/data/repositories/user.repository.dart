import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_search_repository/core/error/failures.dart';
import 'package:github_search_repository/core/http/http_client.dart';
import 'package:github_search_repository/data/models/user.model.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserRepository {
  final HttpClient _httpClient;
  UserRepository(this._httpClient);

  Future<Either<SearchFailure, UserModel>> findUser(String username) async {
    try {
      final Response response =
          await this._httpClient.getHttp('/users/$username');

      return right(UserModel.fromJson(response.data));
    } on DioError catch (e) {
      print(e);
      print("deu ruim");

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
