/// category : "PASSENGER CA"

class CategoriesData {
  CategoriesData({
      String? category,}){
    _category = category;
}

  CategoriesData.fromJson(dynamic json) {
    _category = json['category'];
  }
  String? _category;
CategoriesData copyWith({  String? category,
}) => CategoriesData(  category: category ?? _category,
);
  String? get category => _category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category'] = _category;
    return map;
  }

}