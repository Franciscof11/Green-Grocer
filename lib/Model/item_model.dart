class ItemModel {
  String name;
  String imageUrl;
  String unit; /* Unidade ( Kg, g , ml ) */
  double price;
  String description;

  ItemModel({
    required this.name,
    required this.imageUrl,
    required this.unit,
    required this.price,
    required this.description,
  });
}
