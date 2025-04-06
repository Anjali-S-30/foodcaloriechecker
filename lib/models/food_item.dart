class FoodItem {
  final String id;
  final String name;
  final int calories;
  final double servingSize;
  final String unit;
  final double protein;
  final double carbohydrates;
  final double fat;
  final double fiber;
  final double sugar;
  final double sodium;
  final String? barcode;
  final String? imageUrl;
  final bool isCustom;
  final String? userId;

  FoodItem({
    this.id = '',
    required this.name,
    required this.calories,
    required this.servingSize,
    required this.unit,
    required this.protein,
    required this.carbohydrates,
    required this.fat,
    required this.fiber,
    required this.sugar,
    required this.sodium,
    this.barcode,
    this.imageUrl,
    this.isCustom = false,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'calories': calories,
      'servingSize': servingSize,
      'unit': unit,
      'protein': protein,
      'carbohydrates': carbohydrates,
      'fat': fat,
      'fiber': fiber,
      'sugar': sugar,
      'sodium': sodium,
      'barcode': barcode,
      'imageUrl': imageUrl,
      'isCustom': isCustom,
      'userId': userId,
    };
  }

  factory FoodItem.fromMap(Map<String, dynamic> map) {
    return FoodItem(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      calories: map['calories'] ?? 0,
      servingSize: map['servingSize'] ?? 0.0,
      unit: map['unit'] ?? 'g',
      protein: map['protein'] ?? 0.0,
      carbohydrates: map['carbohydrates'] ?? 0.0,
      fat: map['fat'] ?? 0.0,
      fiber: map['fiber'] ?? 0.0,
      sugar: map['sugar'] ?? 0.0,
      sodium: map['sodium'] ?? 0.0,
      barcode: map['barcode'],
      imageUrl: map['imageUrl'],
      isCustom: map['isCustom'] ?? false,
      userId: map['userId'],
    );
  }

  FoodItem copyWith({
    String? id,
    String? name,
    int? calories,
    double? servingSize,
    String? unit,
    double? protein,
    double? carbohydrates,
    double? fat,
    double? fiber,
    double? sugar,
    double? sodium,
    String? barcode,
    String? imageUrl,
    bool? isCustom,
    String? userId,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      calories: calories ?? this.calories,
      servingSize: servingSize ?? this.servingSize,
      unit: unit ?? this.unit,
      protein: protein ?? this.protein,
      carbohydrates: carbohydrates ?? this.carbohydrates,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      sugar: sugar ?? this.sugar,
      sodium: sodium ?? this.sodium,
      barcode: barcode ?? this.barcode,
      imageUrl: imageUrl ?? this.imageUrl,
      isCustom: isCustom ?? this.isCustom,
      userId: userId ?? this.userId,
    );
  }
} 