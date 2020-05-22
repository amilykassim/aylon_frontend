import 'package:aylon_frontend/learn/bloc/player_listing_events.dart';
import 'package:aylon_frontend/learn/bloc/player_listing_states.dart';
import 'package:aylon_frontend/learn/models/api_models.dart';
import 'package:aylon_frontend/learn/services/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


class PlayerListingBloc extends Bloc<PlayerListingEvent, PlayerListingState> {
  final PlayerRepository playerRepository;

  PlayerListingBloc({@required this.playerRepository}) : assert(playerRepository != null);

  // @override
  // Stream<PlayerListingEvent> transform(Stream<PlayerListingEvent> events) {
  //   return (events as PublishSubject<PlayerListingEvent>)
  //       .transform(DebounceStreamTransformer(Duration(milliseconds: 250)));
  // }

  @override
  void onTransition(Transition<PlayerListingEvent, PlayerListingState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  PlayerListingState get initialState => PlayerUninitializedState();

  @override
  Stream<PlayerListingState> mapEventToState(PlayerListingEvent event) async* {
    print("mapEventToState");
    yield PlayerFetchingState();
    try {
      List<Players> players;
      if (event is CountrySelectedEvent) {
        players = await playerRepository
            .fetchPlayersByCountry(event.nationModel.countryId);
      } else if (event is SearchTextChangedEvent) {
        print("hitting service");
        players = await playerRepository.fetchPlayersByName(event.searchTerm);
      }
      if (players.length == 0) {
        yield PlayerEmptyState();
      } else {
        yield PlayerFetchedState(players: players);
      }
    } catch (_) {
      yield PlayerErrorState();
    }
  }
}
