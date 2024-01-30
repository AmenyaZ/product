/// brand : "KUMHO"

class BrandsData {
  BrandsData({
      String? brand,}){
    _brand = brand;
}

  BrandsData.fromJson(dynamic json) {
    _brand = json['brand'];
  }
  String? _brand;
BrandsData copyWith({  String? brand,
}) => BrandsData(  brand: brand ?? _brand,
);
  String? get brand => _brand;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['brand'] = _brand;
    return map;
  }

}