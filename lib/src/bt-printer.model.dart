class BtPrinterModel {
  BtPrinterModel(this.address, this.name);

  final String address;
  final String name;

  static BtPrinterModel fromJson(Map<String, dynamic> json) =>
      BtPrinterModel(json['address'] as String, json['name'] as String);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'address': address,
        'name': name,
      };
}
