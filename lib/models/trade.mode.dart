class TradeModel {
  final String? name;
  final String? value;
  final String? status;
  final bool? down;

  TradeModel({
    this.name,
    this.value,
    this.status,
    this.down = false,
  });
}
