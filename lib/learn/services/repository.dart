
import 'package:aylon_frontend/learn/models/api_models.dart';
import 'package:aylon_frontend/learn/services/player_api_provider.dart';

class PlayerRepository {
  PlayerApiProvider _playerApiProvider = PlayerApiProvider();

  Future<List<Players>> fetchPlayersByCountry(String countryId) =>
      _playerApiProvider.fetchPlayersByCountry(countryId);

  Future<List<Players>> fetchPlayersByName(String name) =>
      _playerApiProvider.fetchPlayersByName(name);
}
