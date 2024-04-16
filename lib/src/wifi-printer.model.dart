class WifiPrinterModel {
  WifiPrinterModel(this.address, this.name, this.port);

  final String address;
  final String name;
  final int port;

  static WifiPrinterModel fromJson(Map<String, dynamic> json) =>
      WifiPrinterModel(json['address'] as String, json['name'] as String,
          int.tryParse(json['port']) ?? 0000);
}
