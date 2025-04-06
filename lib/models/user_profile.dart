class UserProfile {
  final String id;
  final String email;
  final String name;
  final int age;
  final double weight;
  final double height;
  final Gender gender; // Use the Gender enum
  final String activityLevel;
  final double tdee;
  final List<String> dietaryPreferences;
  final List<String> allergies;

  UserProfile({
    required this.id,
    required this.email,
    required this.name,
    required this.age,
    required this.weight,
    required this.height,
    required this.gender, // Now requires a Gender value
    required this.activityLevel,
    required this.tdee,
    this.dietaryPreferences = const [],
    this.allergies = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'age': age,
      'weight': weight,
      'height': height,
      'gender': gender.name, // Store the enum value as a string
      'activityLevel': activityLevel,
      'tdee': tdee,
      'dietaryPreferences': dietaryPreferences,
      'allergies': allergies,
    };
  }

  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      age: map['age'] ?? 0,
      weight: map['weight'] ?? 0.0,
      height: map['height'] ?? 0.0,
      gender: Gender.values.byName((map['gender'] ?? 'Male').toLowerCase()), // Convert from string
      activityLevel: map['activityLevel'] ?? 'moderate',
      tdee: map['tdee'] ?? 0.0,
      dietaryPreferences: List<String>.from(map['dietaryPreferences'] ?? []),
      allergies: List<String>.from(map['allergies'] ?? []),
    );
  }

  UserProfile copyWith({
    String? id,
    String? email,
    String? name,
    int? age,
    double? weight,
    double? height,
    Gender? gender, // Now takes a nullable Gender value
    String? activityLevel,
    double? tdee,
    List<String>? dietaryPreferences,
    List<String>? allergies,
  }) {
    return UserProfile(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      gender: gender ?? this.gender,
      activityLevel: activityLevel ?? this.activityLevel,
      tdee: tdee ?? this.tdee,
      dietaryPreferences: dietaryPreferences ?? this.dietaryPreferences,
      allergies: allergies ?? this.allergies,
    );
  }
}

// Define the Gender enum outside the class
enum Gender { Male, Female, Others }
