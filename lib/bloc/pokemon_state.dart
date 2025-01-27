
import 'package:pokedex/api/pokemon_page_response.dart';

abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoadInProgress extends PokemonState {}

class PokemonPageLoadSuccess extends PokemonState {
  final List<PokemonListing> pokemonListings;
  final bool canLoadNextPage;

  PokemonPageLoadSuccess({required this.pokemonListings, required this.canLoadNextPage});

}

class PokemonPageLoadFailed extends PokemonState {
  final error;

  PokemonPageLoadFailed({required this.error});

}