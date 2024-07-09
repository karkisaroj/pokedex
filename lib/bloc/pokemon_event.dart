
abstract class PokemonEvent {
  int get page => null;
}

class PokemonPageRequest extends PokemonEvent {
  final int page;

  PokemonPageRequest({required this.page});

}