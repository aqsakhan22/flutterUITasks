enum PropertyTypes { PRIVATE, AGENCY }

class Property {
  final String name;
  final String description;
  final String address;
  final String price;
  final String imagePath;
  final PropertyTypes propertyTypes;
  final bool liked;

  Property({
    required this.name,
    required this.description,
    required this.address,
    required this.price,
    required this.imagePath,
    required this.liked,
    required  this.propertyTypes,
  });
}
