import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/actor_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credit_response.dart';
import 'package:dio/dio.dart';

class ActorDatasourceImpl extends ActorDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDBKey,
        'language': 'es-MX',
      },
    ),
  );

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');
    final creditsResponse = CreditResponse.fromJson(response.data);
    final List<Actor> actors = creditsResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();
    return actors;
  }
}
