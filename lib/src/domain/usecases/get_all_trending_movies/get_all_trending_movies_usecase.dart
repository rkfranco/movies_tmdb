import '../../entities/movie_entity.dart';

abstract class GetAllTrendingMoviesUsecase {
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow);
  // É um padrão chamar de call mas n é obrigatorio
}
