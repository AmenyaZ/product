/// id : 1
/// item_code : "KU2450601807980000"
/// item_name : "245/60R18 KUMHO 105H 798 TYRE"
/// specification : "245060180"
/// brand : "KUMHO"
/// category : "PASSENGER CA"

class ProductsData {
  ProductsData(
      {num? id,
      String? itemCode,
      String? itemName,
      String? specification,
      String? brand,
      String? category,
      num? cartValue}) {
    _id = id;
    _itemCode = itemCode;
    _itemName = itemName;
    _specification = specification;
    _brand = brand;
    _category = category;
    _cartValue = cartValue;
  }
  // Setter for cartValue
  set cartValue(num? value) {
    _cartValue = value;
  }

  ProductsData.fromJson(dynamic json) {
    _id = json['id'];
    _itemCode = json['item_code'];
    _itemName = json['item_name'];
    _specification = json['specification'];
    _brand = json['brand'];
    _category = json['category'];
    _cartValue = json["cart_value"];
  }

  num? _id;
  String? _itemCode;
  String? _itemName;
  String? _specification;
  String? _brand;
  String? _category;
  num? _cartValue;

  ProductsData copyWith({
    num? id,
    String? itemCode,
    String? itemName,
    String? specification,
    String? brand,
    String? category,
    num? cartValue
  }) =>
      ProductsData(
        id: id ?? _id,
        itemCode: itemCode ?? _itemCode,
        itemName: itemName ?? _itemName,
        specification: specification ?? _specification,
        brand: brand ?? _brand,
        category: category ?? _category,
        cartValue: cartValue ?? _cartValue,
      );

  num? get id => _id;

  String? get itemCode => _itemCode;

  String? get itemName => _itemName;

  String? get specification => _specification;

  String? get brand => _brand;

  String? get category => _category;

  num? get cartValue => _cartValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['item_code'] = _itemCode;
    map['item_name'] = _itemName;
    map['specification'] = _specification;
    map['brand'] = _brand;
    map['category'] = _category;
    map['cart_value'] = _cartValue;
    return map;
  }
}
