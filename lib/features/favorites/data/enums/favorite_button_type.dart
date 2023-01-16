enum FavoriteButtonType {
  card('card'),
  slideable('slideable');

  const FavoriteButtonType(this.value);

  final String value;

  static FavoriteButtonType fromString(String value) {
    return FavoriteButtonType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => FavoriteButtonType.slideable,
    );
  }
}
