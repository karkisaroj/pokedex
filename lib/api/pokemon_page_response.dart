
class PokemonListing {
  final int id;
  final String name;

  PokemonListing({required this.id, required this.name});

  String get imageUrl =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  

  factory PokemonListing.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final url = json['url'] as String;
    final id = int.parse(url.split('/')[6]);

    return PokemonListing(id: id, name: name);
  }
}

class PokemonPageResponse {
  final List<PokemonListing> pokemonListings;
  final bool canLoadNextPage;



  factory PokemonPageResponse.fromJson(Map<String, dynamic> json) {
    final canLoadNextPage = json['next'] != null;
    final pokemonListings = (json['results'] as List)
        .map((listingJson) => PokemonListing.fromJson(listingJson))
        .toList();

    return PokemonPageResponse(
        pokemonListings: pokemonListings, canLoadNextPage: canLoadNextPage);
  }

  PokemonPageResponse({required this.pokemonListings, required this.canLoadNextPage});
}