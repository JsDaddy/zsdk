class WifiPrinterModel {
  WifiPrinterModel(this.address, this.name, this.port);

  final String address;
  final String name;
  final int port;

  static WifiPrinterModel fromJson(Map<String, dynamic> json) =>
      WifiPrinterModel(
          json['address'] as String,
          json['name'] as String,
          json['port'] is int
              ? json['port']
              : int.tryParse(json['port']) ?? 6101);

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'address': address, 'name': name, 'port': port};
}
