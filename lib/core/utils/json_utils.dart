class JsonUtils {
  static List<String>? parseStringOrList(dynamic value) {
    if (value == null) return null;
    if (value is List) return List<String>.from(value.whereType<String>());
    if (value is String) return [value];
    return null;
  }

// Add other JSON helpers here as needed
}
